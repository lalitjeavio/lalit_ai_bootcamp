import os

from dotenv import load_dotenv
from celery import Celery

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base

from .mixins import Base


load_dotenv(".env")

# ---------- SQLAlchemy Setup ----------

DATABASE_URL = "postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:5432/{POSTGRES_DB}".format(
    POSTGRES_USER=os.environ.get('POSTGRES_USER'),
    POSTGRES_PASSWORD=os.environ.get('POSTGRES_PASSWORD'),
    POSTGRES_HOST=os.environ.get('POSTGRES_HOST'),
    POSTGRES_DB=os.environ.get('POSTGRES_DB')
)

engine = create_engine(DATABASE_URL)

SessionLocal = sessionmaker(autoflush=False, autocommit=False, bind=engine)

Base = declarative_base(cls=Base)

# ---------- Celery Setup ----------

celery_app = Celery(__name__)


celery_app.conf.update(
    broker_url=os.environ.get('BROKER_URL'),
    result_backend=os.environ.get('BROKER_URL')
)

celery_app.autodiscover_tasks(["app.api.article.tasks"])

