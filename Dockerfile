FROM alpine

RUN apk update && \
    apk add py-pip py-cffi openssl python-dev gcc make musl-dev libffi-dev openssl-dev && \
    pip install fabric && \
    apk del python-dev gcc make musl-dev libffi-dev openssl-dev
