from flask_restx import fields, reqparse

from app.api.article import article_api as api
from app.common.config import MagicConstants

from app.api.article.constants import Regex


ConversationRequestModel = api.model("ConversationRequestModel", {
    "question": fields.String(required=True),
    "thread_id": fields.String(pattern=Regex.uuid_regex.value),
})

ConversationModel = api.model("ConversationModel", {
    "question": fields.String,
    "answer": fields.String,
    "thread_id": fields.String
})

ConversationPaginationModel = api.model("PaginationModel", {
    "data": fields.List(fields.Nested(ConversationModel)),
    "page": fields.Integer,
    "page_size": fields.Integer,
    "total_page": fields.Integer,
    "total_item": fields.Integer
})


conversation_args_parser = reqparse.RequestParser()
conversation_args_parser.add_argument('page', type=int, help="Page number", default=1)
conversation_args_parser.add_argument('page_size', type=int, help="conversation par page", default=MagicConstants.PAGE_SIZE.value)
