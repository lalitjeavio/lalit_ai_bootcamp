from dotenv import dotenv_values

from sqlalchemy import create_engine, DateTime, func
from sqlalchemy.orm import sessionmaker, declarative_base, Mapped, mapped_column
from sqlalchemy.ext.declarative import declared_attr

env = dotenv_values(".env")

DATABASE_URL = "postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:5432/{POSTGRES_DB}".format(
    **env
)
engine = create_engine(DATABASE_URL)


SessionLocal = sessionmaker(autoflush=False, autocommit=False, bind=engine)


class Base:

    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    id: Mapped[int] = mapped_column(primary_key=True)


# We can create separate module if we have multiple mixin
class TimestampMixin:
    created_at: Mapped[DateTime] = mapped_column(default=func.now())

Base = declarative_base(cls=Base)
