from flask import Blueprint
from flask_restx import Api
from app.api.article import article_api
from app.api.article.views import *

api = Api(
    title="News"
)

api.add_namespace(article_api)

