import os, re

import logging

import requests
from celery import Task
from celery.schedules import crontab
from sqlalchemy import select
from bs4 import BeautifulSoup

from app.common import LLMFactory
from app.common.config import LLMConfig
from app.extensions import celery_app, SessionLocal
from app.api.article.models import Article, Embedding
from app.api.article.prompts import Prompts


logger = logging.getLogger(__name__)


class FetchArticle(Task):
    """ Fetch Hacker New Story on interval bases """

    name = 'fetch_article_task'

    def __init__(self):
        super().__init__()
        self.llm_factory = LLMFactory(LLMConfig.PROVIDER.value)()
    
    def fetch_top_stories(self):
        """ Fetch the stories from Hacker News tab """
        response = requests.get(os.environ.get("HACKER_NEWS_URL")+"topstories.json")
        response.raise_for_status()
        return response.json()
    
    def save_embedding(self, text, article):
        """ Get embedding and store the embedding on db """
        chunks_len = 2000
        texts = [text[i:i + chunks_len] for i in range(0, len(text), chunks_len)]
        for text in texts:
            embedding = self.llm_factory.get_embedding(text)
            self.session.add(Embedding(embedding=embedding, article=article))

    def get_article_text_and_summary(self, url):
        """ Get text of article and its summary """
        # extract text
        response = requests.get(url)
        soup = BeautifulSoup(response.text, 'html.parser')
        text = re.sub(r'\s+', ' ', soup.text.strip())

        # get summary of article text
        summary = ""
        chunks_len = 30000
        texts = [text[i:i + chunks_len] for i in range(0, len(text), chunks_len)]
        for text in texts:
            prompt = Prompts.summary_prompt.value.format(text=text)
            summary += self.llm_factory.generate(prompt)
    
        return text, summary

    def add_stories(self, stories):
        """ Add stories with embedding """
        stmt = select(Article.id).where(Article.id.in_(stories))
        db_stories = self.session.execute(stmt).scalars().all()
        new_stories = set(stories) - set(db_stories)

        if len(db_stories)==len(stories):
            logger.info("Already imported all stories")
            return
        
        for story_id in list(new_stories)[0:10]:
            story_detail_url = os.environ.get("HACKER_NEWS_URL")+f"item/{story_id}.json/"
            response = requests.get(story_detail_url)
            response.raise_for_status()
            data = response.json()
            logger.info(data)
            text, summary = self.get_article_text_and_summary(data.get("url"))
            article = Article(
                id=data.get("id"),
                title=data.get("title"),
                author=data.get("by"),
                points=data.get("score"),
                comment_counts=len(data.get("kids", [])),
                url=data.get("url"),
                text=text,
                summary=summary
            )

            self.save_embedding(text, article)

            self.session.add(article)

    def run(self):
        """ Fetch and story required News """
        self.session = SessionLocal()

        stories = self.fetch_top_stories()
        self.add_stories(stories)
        
        self.session.commit()


fetch_article = celery_app.register_task(FetchArticle())
fetch_articles_bs = {
    'fetch-article-every-midnight': {
        'task': 'fetch_article_task',
        'schedule': crontab(minute=0, hour=0)
    }
}

