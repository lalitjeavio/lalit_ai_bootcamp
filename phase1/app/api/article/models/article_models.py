from sqlalchemy import String
from sqlalchemy.orm import Mapped, mapped_column


from app.extensions import Base
from app.mixins import TimestampMixin


class Article(TimestampMixin, Base):
    """ Article table have metadata of the Hacket News Story """

    title: Mapped[str] = mapped_column(String(255), nullable=False)
    author: Mapped[str] = mapped_column(String(100), nullable=False)
    points: Mapped[int] = mapped_column(nullable=False)
    comment_counts: Mapped[int] = mapped_column(default=0)

