FROM python:3.6-slim-buster
COPY ./requirements.txt .

RUN pip install -r requirements.txt
RUN pip install