FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true

RUN mkdir /config
ADD /config/requirements.txt /config/

RUN python -m pip install --upgrade pip
RUN pip install --root-user-action=ignore requests
RUN pip install -r /config/requirements.txt

RUN mkdir /src;

WORKDIR /src
