FROM python:alpine

RUN apk add bash-completion

RUN adduser -D python

RUN pip install pipenv

USER python

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT=True

CMD ["tail", "-f", "/dev/null"]