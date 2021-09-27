FROM python:3.8

WORKDIR /var/code

COPY requirements.txt .

RUN pip install -r requirements.txt

ENV TZ America/New_York

RUN mlbv --init
