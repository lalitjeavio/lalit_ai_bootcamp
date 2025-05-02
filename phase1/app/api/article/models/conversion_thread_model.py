from typing import List
import uuid

from sqlalchemy import UUID
from sqlalchemy.orm import Mapped, mapped_column, relationship

from app.extensions import Base
from app.mixins import TimestampMixin


class ConversionThread(TimestampMixin, Base):

    id: Mapped[str] = mapped_column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    summary: Mapped[str] = mapped_column(nullable=True)

    conversations: Mapped[List["Conversation"]] = relationship(back_populates="thread")

