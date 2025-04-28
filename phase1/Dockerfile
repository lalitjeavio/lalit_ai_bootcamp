FROM python:3.10.17-alpine3.21

WORKDIR phase1

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . phase1

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["main.py"]
