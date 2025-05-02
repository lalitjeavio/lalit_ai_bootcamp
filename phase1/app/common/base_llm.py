from abc import ABC, abstractmethod


class LLMBase(ABC):
    """ LLM base Contract for common behavior """
    
    @property
    @abstractmethod
    def llm_model(self):
        """ This llm_model need to be assign before calling generate method """
        pass

    @property
    @abstractmethod
    def embedding_model(self):
        """ This embedding_model need to be assign to before calling get_embedding method """
        pass

    @abstractmethod
    def get_embedding(self, text):
        """ Need to override this method to generate embedding from text """
        pass

    @abstractmethod
    def generate(self, prompt_with_context):
        """ Need to override this method to generate text on asking prompt"""
        pass

