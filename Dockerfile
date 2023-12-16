FROM python:alpine

RUN adduser -D python

RUN pip install pipenv

RUN pipenv install django

USER python

WORKDIR /home/python/app

ENV PIP_ENV_VENV_IN_PROJECT=True

CMD ["tail", "-f", "/dev/null"]