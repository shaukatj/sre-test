FROM ubuntu:16.04

ENV MY_NAME="TEST_APP"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN mkdir -p /app

RUN pip install Flask

WORKDIR /app

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
