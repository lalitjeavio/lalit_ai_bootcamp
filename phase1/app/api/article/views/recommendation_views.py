
from flask_restx import Resource, abort

from app.extensions import SessionLocal
from app.common import LLMFactory
from app.api.article import article_api
from app.api.article.models import ConversionThread, Article, Embedding
from app.api.article.schemas import recommendation_args_parser, ArticleModel
from app.common.config import LLMConfig


@article_api.route("/recommendation")
class Recommendation(Resource):
    """ This resource will help to generate the recommendation """

    def __init__(self, api=None, *args, **kwargs):
        super().__init__(api, *args, **kwargs)

        self.session = SessionLocal()
        self.llm_factory = LLMFactory(LLMConfig.PROVIDER.value)()
        self.articles_data = {}

    @article_api.expect(recommendation_args_parser, validate=True)
    @article_api.marshal_with(ArticleModel, code=200)
    def get(self):
        args = recommendation_args_parser.parse_args()
        thread_id = args.get("thread_id")
        
        query_conversion_thread = self.session.query(ConversionThread).filter(ConversionThread.id==thread_id).first()
        # get thread if exist or create new
        if thread_id and query_conversion_thread and query_conversion_thread.summary:
            embedding = self.llm_factory.get_embedding(query_conversion_thread.summary)
            results = self.session.query(Article).join(Embedding).filter(
                Embedding.embedding.cosine_distance(embedding) < LLMConfig.COSINE_DISTANCE.value
            ).order_by(Article.created_at.desc()).limit(5)
            self.articles_data = [article.__dict__ for article in results]
        else:   
            abort(404, "Thread or summary not found") 
    
        return self.articles_data
