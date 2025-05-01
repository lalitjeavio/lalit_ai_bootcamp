from sqlalchemy import String, Integer
from sqlalchemy.orm import Mapped, mapped_column

from app.extensions import Base
from app.mixins import TimestampMixin


class Conversation(TimestampMixin, Base):
    """ Model have the conversion history on specific thead """

    question: Mapped[str] = mapped_column(nullable=False)
    answer: Mapped[str] = mapped_column(nullable=False)

