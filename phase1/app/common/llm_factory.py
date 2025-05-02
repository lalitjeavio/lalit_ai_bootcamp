from .config import LLMConfig
from .openai import OpenAILLM


class LLMFactory:
    """ LLM Factory for access LLM provider """

    def __init__(self, provider):
        self.__provider = provider
        self.__llm_providers = {
            LLMConfig.OPENAI.value: OpenAILLM
        }

    def __call__(self, *args, **kwargs):
       """ return provider object based on request """
       return self.__llm_providers[self.__provider](*args, **kwargs)

