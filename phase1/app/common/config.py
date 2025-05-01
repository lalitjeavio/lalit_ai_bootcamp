import os

from enum import Enum


class MagicConstants(Enum):
    PAGE_SIZE = 10


class LLMConfig(Enum):
    """ LLMConfig """
    EMBEDDING_MODEL = os.environ.get("EMBEDDING_MODEL", "text-embedding-3-small")
    LLM_MODEL = os.environ.get("LLM_MODEL", "gpt-3.5-turbo-0125")
    PROVIDER = os.environ.get("PROVIDER", "openai")
    OPENAI = "openai"
    CLAUDE = "claude"

