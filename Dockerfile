FROM python:3.9
MAINTAINER f15.dev

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

RUN jt -t grade3 -T
