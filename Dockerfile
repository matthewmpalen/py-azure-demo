FROM python:3.7

USER root

ADD . /app
WORKDIR /app

RUN pip install pipenv
RUN pipenv install --system

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
