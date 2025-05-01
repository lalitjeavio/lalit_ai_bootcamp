from flask_restx import fields, reqparse

from app.api.article import article_api as api
from app.common.config import MagicConstants


ArticleModel = api.model("Article", {
    "id": fields.Integer,
    "title": fields.String,
    "author": fields.String,
    "points": fields.Integer,
    "comment_counts": fields.Integer,
    "url": fields.String,
    "text": fields.String,
    "summary": fields.String
})

PaginationModel = api.model("PaginationModel", {
    "data": fields.List(fields.Nested(ArticleModel)),
    "page": fields.Integer,
    "page_size": fields.Integer,
    "total_page": fields.Integer,
    "total_item": fields.Integer
})

article_args_parser = reqparse.RequestParser()
article_args_parser.add_argument('search', type=str, help="Search the article", default='')
article_args_parser.add_argument('embedding', type=int, help="is it embedding base search", default=0)
article_args_parser.add_argument('page', type=int, help="Page number", default=1)
article_args_parser.add_argument('page_size', type=int, help="Article par page", default=MagicConstants.PAGE_SIZE.value)

