# syntax=docker/dockerfile:1
FROM python
LABEL authors="sth-v"
RUN apt update -y && apt install cmake python3.11-full python3-pip cmake -y
COPY --link pyproject.toml poetry.lock test.py /

RUN pip install poetry && poetry install

ENTRYPOINT poetry shell