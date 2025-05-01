from math import ceil

from sqlalchemy import or_, desc
from flask_restx import Resource

from app.extensions import SessionLocal
from app.common import LLMFactory
from app.api.article import article_api
from app.api.article.models import Conversation
from app.api.article.schemas import ConversationPaginationModel, ConversationRequestModel, conversation_args_parser
from app.common.config import MagicConstants, LLMConfig



@article_api.route("/<int:id>")
class ConversationDetails(Resource):

    @article_api.expect(conversation_args_parser, ConversationRequestModel, validate=True)
    @article_api.marshal_with(ConversationPaginationModel, code=200)
    def get(self, id):
        args = conversation_args_parser.parse_args()
        page_size = args.get("page_size", MagicConstants.PAGE_SIZE.value)
        page = args.get('page', 1)

        session = SessionLocal()
        query = session.query(Conversation)

        # calculation of pagination
        total_item = query.count()
        total_page = ceil(total_item/page_size)
        offset =  ((page * page_size) - page_size)
    
        # data
        conversations = query.order_by(desc(Conversation.id)).offset(
            offset=offset
        ).limit(page_size)

        return {
            "data": [conversation.__dict__ for conversation in conversations],
            "page": page,
            "page_size": page_size,
            "total_page": total_page,
            "total_item": total_item
        }