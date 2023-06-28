# syntax=docker/dockerfile:1
FROM python:slim-bullseye
WORKDIR /app
COPY ./personal_blog .
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
RUN apt update
RUN apt install nano
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
