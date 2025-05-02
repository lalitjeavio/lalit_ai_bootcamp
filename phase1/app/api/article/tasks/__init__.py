from .fetch_articles_task import fetch_article, fetch_articles_bs

from app.extensions import celery_app


celery_app.conf.beat_schedule.update(fetch_articles_bs)

