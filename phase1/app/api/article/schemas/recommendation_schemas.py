import re

from flask_restx import reqparse, abort


def validate_uuid(value):
    uuid_regex = r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'
    if not re.match(uuid_regex, value):
        abort(406, "Invalid uuid format")
    return value


recommendation_args_parser = reqparse.RequestParser()
recommendation_args_parser.add_argument('thread_id', type=validate_uuid, help="Thread conversion Id", default=1)

