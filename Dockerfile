FROM python:3.6-slim-buster

RUN apt-get update && apt-get install -y python3-dev build-essential

COPY ./requirements.txt .
RUN pip install -r requirements.txt
RUN zenodo_get 4054476
RUN tar -xvf openie6_data.tar.gz
RUN zenodo_get 4055395
RUN tar -xvf openie6_models.tar.gz