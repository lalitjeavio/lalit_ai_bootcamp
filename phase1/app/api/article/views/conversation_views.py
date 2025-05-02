import uuid
from math import ceil

from sqlalchemy import or_, desc
from flask_restx import Resource

from flask import request
from flask import current_app

from app.extensions import SessionLocal
from app.common import LLMFactory
from app.api.article import article_api
from app.api.article.models import Conversation, ConversionThread, Article, Embedding
from app.api.article.schemas import ConversationPaginationModel, ConversationRequestModel, conversation_args_parser
from app.api.article.prompts import Prompts
from app.common.config import MagicConstants, LLMConfig


@article_api.route("/conversion")
class ConversationDetails(Resource):

    def __init__(self, api=None, *args, **kwargs):
        super().__init__(api, *args, **kwargs)

        self.session = SessionLocal()
        self.llm_factory = LLMFactory(LLMConfig.PROVIDER.value)()
        self.conversion_data = {}
        self.total_page = 1
        self.total_item = 0

    def __fetch_context(self):
        """ Fetch article from data using embedding based on question """
        embedding = self.llm_factory.get_embedding(self.data["question"])
        articles_query = self.session.query(Article).join(Embedding.article).filter(
            Embedding.embedding.cosine_distance(embedding) < LLMConfig.COSINE_DISTANCE.value
        )
        context = "\n".join(["Article Title "+ article.title + "\nArticle Content: " + article.text for article in articles_query])
        return context

    def __fetch_previous_conversion(self, ):
        """ Fetch previous conversion based on thread id """
        previous_query = self.session.query(Conversation).filter(
            Conversation.thread==self.conversion_thread
        )

        query = previous_query.order_by(Conversation.created_at.desc()).limit(3)
        previous_conversation = "\n".join(["Question: " + conversion.question + " Answer " + conversion.answer for conversion in query.all()])

        # Update the summary every three conversation
        if previous_query.count()%3==0:
            prompt = Prompts.summary_or_conversion_prompt.value.format(conversion=previous_conversation, summary=self.conversion_thread.summary)
            summary = self.llm_factory.generate(prompt)
            self.session.query(ConversionThread).filter(ConversionThread.id==self.conversion_thread.id).update({ConversionThread.summary:summary})

        return previous_conversation
    
    def __fetch_conversation(self):
        """ fetch the conversation for requested thread """
        query = self.session.query(Conversation).filter(Conversation.thread==self.conversion_thread)
        self.total_item = query.count()
        self.total_page = ceil(self.total_item/self.page_size)
        offset =  ((self.page * self.page_size) - self.page_size)

        conversations = query.order_by(Conversation.created_at.desc()).offset(
            offset=offset
        ).limit(self.page_size)

        conversion_data = [conversation.__dict__ for conversation in conversations]

        return conversion_data

    @article_api.expect(conversation_args_parser, ConversationRequestModel, validate=True)
    @article_api.marshal_with(ConversationPaginationModel, code=200)
    def post(self):
        args = conversation_args_parser.parse_args()
        self.page_size = args.get("page_size", MagicConstants.PAGE_SIZE.value)
        self.page = args.get('page', 1)
        self.data = article_api.payload
        thread_id = self.data.get("thread_id")
        self.conversion_data = {}
        
        try:
            query_conversion_thread = self.session.query(ConversionThread).filter(ConversionThread.id==thread_id).first()
            # get thread if exist or create new
            if thread_id and query_conversion_thread:
                self.conversion_thread = query_conversion_thread
            else:
                self.conversion_thread = ConversionThread(id=uuid.uuid4())
                self.session.add(self.conversion_thread)

            # if thread exist get previous conversation
            previous_conversation = ""
            if thread_id:
                previous_conversation = self.__fetch_previous_conversion()

            # get latest article based on the question
            context = self.__fetch_context()

            if context:
                # generate answer on the question
                prompt = "Context :" + context + " Previous conversion:" + previous_conversation + "Question: " + self.data["question"]
                answer = self.llm_factory.generate(prompt)
            else:
                answer = "Data not found!"

            # save generated answer on question
            self.session.add(Conversation(question=self.data['question'], answer=answer, thread=self.conversion_thread))
            self.session.commit()
            
            # fetch the conversions from databases
            self.conversion_data = self.__fetch_conversation()
        except Exception as e:
            current_app.logger.error(e, exc_info=True)
            self.session.rollback()
        finally:
            self.session.close()
    
        return {
            "data": self.conversion_data,
            "page": self.page,
            "page_size": self.page_size,
            "total_page": self.total_page,
            "total_item": self.total_item
        }
    

