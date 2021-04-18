FROM python:3.7

USER root

ADD . /app
WORKDIR /app

RUN pip install pipenv
RUN pipenv install

ENTRYPOINT ["./start/sh"]
