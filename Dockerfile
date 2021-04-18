FROM python:3.6-slim-buster

RUN apt-get update -y && apt-get install apt-file -y && apt-file update -y && apt-get install -y python3-dev build-essential

COPY ./requirements.txt .
RUN pip install -r requirements.txt