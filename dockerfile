FROM ubuntu

LABEL MAINTAINER="José Walter Sell <josewalter408@gmail.com>"
LABEL APP_VERSION="1.0.0"

ENV NPM_VERSION=8 ENVIRONMENT=PRO

RUN apt-get update && RUN apt-get install -y git nano npm

WORKDIR /usr/share/myapp

RUN npm build

COPY ./files/requirements.txt requirements.txt

ADD ./files.tar.gz ./

RUN useradd josewalter

USER jose Walter

EXPOSE 8080

ENTRYPOINT [ "ping" ]


CMD [ "localhost" ]
