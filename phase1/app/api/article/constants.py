from enum import Enum


class Prompts(Enum):
    summary_prompt = "Please read the following three backtick text carefully and provide a concise summary that captures the main points, key arguments, and overall message. Focus on clarity and brevity, and avoid unnecessary detail or repetition. Use your own words to express the ideas rather than copying directly from the text.  ```{text}```"
    summary_or_conversion_prompt = """
    Summarize the current conversation in a clear and concise paragraph. Incorporate the context and key points from the previous summary to ensure continuity. Focus on what the user is trying to accomplish, the solutions discussed, and any pending follow-ups.

    Previous Summary:
    {summary}

    New Conversation:
    {conversion}

    Return a single cohesive summary that reflects the complete state of the discussion so far.
    """


class Regex(Enum):
    uuid_regex = r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'
