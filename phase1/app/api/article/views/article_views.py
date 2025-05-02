from math import ceil

from sqlalchemy import or_, desc
from flask_restx import Resource

from app.extensions import SessionLocal
from app.api.article import article_api
from app.api.article.models import Article
from app.api.article.schemas import PaginationModel, article_args_parser
from app.constants import MagicConstants


@article_api.route('/')
class ArticleAPI(Resource):

    @article_api.expect(article_args_parser)
    @article_api.marshal_with(PaginationModel)
    def get(self):
        args = article_args_parser.parse_args()
        
        search = "%{}%".format(args.get("search"))
        page_size =args.get("page_size", MagicConstants.PAGE_SIZE.value)
        page = args.get('page', 1)

        session = SessionLocal()
        query = session.query(Article)
        # search data in title and author
        if search:
            query = session.query(Article).filter(
                or_(
                    Article.title.ilike(search),
                    Article.author.ilike(search)
                )
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

