import logging

import requests
from dotenv import dotenv_values
from celery import Task
from celery.schedules import crontab
from sqlalchemy import select

from app.extensions import celery_app, SessionLocal

from app.api.article.models import Article


logger = logging.getLogger(__name__)
env = dotenv_values(".env")


class FetchArticle(Task):
    """ Fetch Hacker New Story on interval bases """

    name = 'fetch_article_task'

    def fetch_top_stories(self):
        """ Fetch the stories from Hacker News tab """
        response = requests.get(env.get("HACKER_NEWS_URL")+"topstories.json")
        response.raise_for_status()
        return response.json()

    def add_stories(self, stories):
        session = SessionLocal()
        stmt = select(Article.id).where(Article.id.in_(stories))
        db_stories = session.execute(stmt).scalars().all()
        new_stories = set(stories) - set(db_stories)

        if len(db_stories)==len(stories):
            logger.info("Already imported all stories")
            return
        
        for story_id in new_stories:
            story_detail_url = env.get("HACKER_NEWS_URL")+f"item/{story_id}.json/"
            logger.info(story_detail_url)
            response = requests.get(story_detail_url)
            response.raise_for_status()
            data = response.json()
            logger.info(data)
            article = Article(
                id=data.get("id"),
                title=data.get("title"),
                author=data.get("by"),
                points=data.get("score"),
                comment_counts=len(data.get("kids", []))
            )
            session.add(article)
            

        # save the data
        session.commit()

    def run(self):
        """ Fetch and story required News """
        stories = self.fetch_top_stories()
        self.add_stories(stories)


fetch_article = celery_app.register_task(FetchArticle())
fetch_articles_bs = {
    'fetch-article-every-midnight': {
        'task': 'fetch_article_task',
        'schedule': crontab(minute=0, hour=0)
    }
}

