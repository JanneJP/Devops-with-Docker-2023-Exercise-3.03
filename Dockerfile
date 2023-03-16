FROM python:3-alpine

ENV FLASK_APP=/app/app.py

WORKDIR /app

COPY ./project/requirements.txt /app/requirements.txt

RUN pip install --upgrade pip

RUN pip install -r ./requirements.txt

COPY project/app.py ./app.py

CMD flask run --host=0.0.0.0