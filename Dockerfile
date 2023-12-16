FROM python:alpine

RUN adduser -D python

RUN pip install pipenv

USER python

WORKDIR /home/python/app

ENV PIP_ENV_VENV_IN_PROJECT=True

CMD ["tail", "-f", "dev/null"]