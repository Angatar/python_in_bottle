FROM python:alpine
LABEL org.opencontainers.image.authors="d3fk"
LABEL org.opencontainers.image.source="https://github.com/Angatar/python_in_bottle.git"
LABEL org.opencontainers.image.url="https://github.com/Angatar/python_in_bottle"

ARG TARGETVARIANT
# QEMU can make pip select an ARMv7 wheel when building for ARMv6.
RUN apk upgrade --no-cache \
    && if [ "$TARGETVARIANT" = "v6" ]; then export PIP_NO_BINARY=charset-normalizer; fi \
    && pip install bottle requests

