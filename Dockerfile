FROM alpine

RUN apk update
RUN apk add py-pip py-cffi openssl python-dev gcc make musl-dev libffi-dev openssl-dev
RUN pip install fabric
RUN apk del python-dev gcc make musl-dev libffi-dev openssl-dev
