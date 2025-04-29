
from dotenv import dotenv_values
from celery import Celery

from sqlalchemy import create_engine, DateTime, func
from sqlalchemy.orm import sessionmaker, declarative_base, Mapped, mapped_column

from .mixins import Base


env = dotenv_values(".env")

# ---------- SQLAlchemy Setup ----------

DATABASE_URL = "postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:5432/{POSTGRES_DB}".format(
    **env
)

engine = create_engine(DATABASE_URL, echo=True)

SessionLocal = sessionmaker(autoflush=False, autocommit=False, bind=engine)

Base = declarative_base(cls=Base)

# ---------- Celery Setup ----------

celery_app = Celery(__name__)


celery_app.conf.update(
    broker_url=env.get('BROKER_URL'),
    result_backend=env.get('BROKER_URL')
)

celery_app.autodiscover_tasks(["app.api.article.tasks"])

