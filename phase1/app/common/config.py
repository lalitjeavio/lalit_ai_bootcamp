import os

from enum import Enum


class MagicConstants(Enum):
    PAGE_SIZE = 10


class LLMConfig(Enum):
    """ LLMConfig """
    EMBEDDING_MODEL = os.environ.get("EMBEDDING_MODEL", "text-embedding-3-small")
    EMBEDDING_CHUCK_LENGTH = 2000
    LLM_CHUCK_LENGTH = 30000
    LLM_MODEL = os.environ.get("LLM_MODEL", "gpt-3.5-turbo-0125")
    PROVIDER = os.environ.get("PROVIDER", "openai")
    COSINE_DISTANCE = 0.7
    OPENAI = "openai"
    CLAUDE = "claude"

