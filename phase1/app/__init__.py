from flask import Flask
from celery import Celery
from .api import api


def create_app():
    """ Create flask app """
    app = Flask(__name__)

    api.init_app(app)

    return app
