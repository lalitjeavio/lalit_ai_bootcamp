from openai import OpenAI

from .base_llm import LLMBase
from .config import LLMConfig

client = OpenAI()


class OpenAILLM(LLMBase):
    """ OpenAILLM class to help generate text and embedding of text """
    
    llm_model = LLMConfig.LLM_MODEL.value
    embedding_model = LLMConfig.EMBEDDING_MODEL.value

    def get_embedding(self, text):
        """ Need to override this method to generate embedding from text """
        text = text.replace("\n", " ")
        response = client.embeddings.create(input=[text], model=self.embedding_model)
        return response.data[0].embedding

    def generate(self, prompt_with_context):
        """ Need to override this method to generate text on asking prompt"""
        response = client.responses.create(
            model=self.llm_model,
            input=prompt_with_context
        )
        return response.output_text

