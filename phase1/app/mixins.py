from sqlalchemy import DateTime, func
from sqlalchemy.orm import Mapped, mapped_column
from sqlalchemy.ext.declarative import declared_attr


class Base:
    """ Base for common fields and attribute """
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()


class TimestampMixin:
    created_at: Mapped[str] = mapped_column(DateTime, default=func.now())

