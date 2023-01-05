FROM python:3.8-slim-buster

WORKDIR /src

ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true

RUN mkdir /config

ADD /config/requirements.txt /config/

RUN pip install -r /config/requirements.txt
RUN pip install --upgrade pip
RUN mkdir /src;
