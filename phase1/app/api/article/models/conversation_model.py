import uuid

from sqlalchemy import String, Integer, UUID
from sqlalchemy.orm import Mapped, mapped_column

from app.extensions import Base
from app.mixins import TimestampMixin


class Conversation(TimestampMixin, Base):
    """ Model have the conversion history on specific thead """

    thread_id: Mapped[str] = mapped_column(UUID(as_uuid=True), nullable=False, default=uuid.uuid4)
    question: Mapped[str] = mapped_column(nullable=False)
    answer: Mapped[str] = mapped_column(nullable=False)

