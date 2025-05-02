import re

from flask_restx import reqparse, abort
from app.api.article.constants import Regex


def validate_uuid(value):

    if not re.match(Regex.uuid_regex.value, value):
        abort(406, "Invalid uuid format")
    return value


recommendation_args_parser = reqparse.RequestParser()
recommendation_args_parser.add_argument('thread_id', type=validate_uuid, help="Thread conversion Id", default=1)

