from pgvector.sqlalchemy import Vector

from sqlalchemy import ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, relationship

from app.extensions import Base


class Embedding(Base):
    article_id: Mapped[int] = mapped_column(ForeignKey("article.id"))
    embedding: Mapped[str] = mapped_column(Vector())
    article: Mapped["Article"] = relationship(back_populates="embeddings")

