FROM python:3.6-slim-buster

RUN apt-get update && apt-get install -y python3-dev build-essential

COPY ./requirements.txt .
RUN pip install -r requirements.txt