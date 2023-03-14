FROM python:3.12.0a6-alpine3.17
LABEL org.opencontainers.image.authors="d3fk"
LABEL org.opencontainers.image.source="https://github.com/Angatar/python_in_bottle.git"
LABEL org.opencontainers.image.url="https://github.com/Angatar/python_in_bottle"

RUN apk upgrade --no-cache \
    && pip install bottle requests

