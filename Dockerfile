FROM python:alpine

RUN useradd -ms /bin/bash python

USER python

WORKDIR /home/python/app