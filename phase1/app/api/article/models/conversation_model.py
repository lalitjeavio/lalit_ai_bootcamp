
from sqlalchemy import ForeignKey, Integer
from sqlalchemy.orm import Mapped, mapped_column, relationship

from app.extensions import Base
from app.mixins import TimestampMixin


class Conversation(TimestampMixin, Base):
    """ Model have the conversion history on specific thead """

    id: Mapped[int] = mapped_column(primary_key=True)
    thread_id: Mapped[str] = mapped_column(ForeignKey("conversionthread.id"))
    question: Mapped[str] = mapped_column(nullable=False)
    answer: Mapped[str] = mapped_column(nullable=False)

    thread: Mapped["ConversionThread"] = relationship(back_populates="conversations")

