from enum import Enum


class Prompts(Enum):
    summary_prompt = "Please read the following three backtick text carefully and provide a concise summary that captures the main points, key arguments, and overall message. Focus on clarity and brevity, and avoid unnecessary detail or repetition. Use your own words to express the ideas rather than copying directly from the text.  ```{text}```"

