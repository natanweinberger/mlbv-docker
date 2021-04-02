FROM python:3.8

WORKDIR /var/code

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN mlbv --init
