FROM python:3.8.10

RUN apt-get update && apt-get install --yes pipenv

WORKDIR /usr/src/app

COPY ./ /usr/src/app/

RUN pipenv install --deploy --ignore-pipfile

CMD pipenv run python main.py
