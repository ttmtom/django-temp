FROM python:3.9.9 AS builder 

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app/
COPY ./ /app/
RUN pip install pipenv

FROM builder AS dev
RUN pipenv install --system
