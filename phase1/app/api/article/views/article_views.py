from math import ceil

from sqlalchemy import or_, desc
from flask_restx import Resource

from app.extensions import SessionLocal
from app.common import LLMFactory
from app.api.article import article_api
from app.api.article.models import Article, Embedding
from app.api.article.schemas import ArticlePaginationModel, article_args_parser, ArticleModel
from app.common.config import MagicConstants, LLMConfig


@article_api.route('/')
class ListArticleAPI(Resource):

    @article_api.expect(article_args_parser)
    @article_api.marshal_with(ArticlePaginationModel)
    def get(self):
        args = article_args_parser.parse_args()

        search = "%{}%".format(args.get("search"))
        embedding_search = args.get("embedding", False) == 1
        page_size =args.get("page_size", MagicConstants.PAGE_SIZE.value)
        page = args.get('page', 1)

        session = SessionLocal()
        query = session.query(Article)

        if search and embedding_search is False: # search using like lookup
            query = session.query(Article).filter(
                or_(
                    Article.title.ilike(search),
                    Article.author.ilike(search),
                    Article.text.ilike(search),
                    Article.summary.ilike(search),
                    Article.url.ilike(search)
                )
            )
        elif search and embedding_search: # search using embedding
            factory = LLMFactory(LLMConfig.PROVIDER.value)()
            embedding = factory.get_embedding(search)
            query = session.query(Article).join(Embedding.article).filter(
                Embedding.embedding.cosine_distance(embedding) < 0.8
            )

        # calculation of pagination
        total_item = query.count()
        total_page = ceil(total_item/page_size)
        offset =  ((page * page_size) - page_size)
    
        # data
        articles = query.order_by(desc(Article.id)).offset(
            offset=offset
        ).limit(page_size)

        return {
            "data": [article.__dict__ for article in articles],
            "page": page,
            "page_size": page_size,
            "total_page": total_page,
            "total_item": total_item
        }


@article_api.route("/<int:id>")
class ArticleDetail(Resource):

    @article_api.marshal_with(ArticleModel)
    def get(self, id):
        session = SessionLocal()
        article = session.query(Article).filter(Article.id==id).scalar()
        return article.__dict__
