FROM golang:1.9-alpine
RUN apk update
RUN apk add git

WORKDIR /go/src/github.com/go-redis/redis/
RUN git clone https://github.com/go-redis/redis.git .
RUN git checkout v6
WORKDIR /go/src/github.com/gorilla/mux/
RUN git clone https://github.com/gorilla/mux .
WORKDIR /go/src/github.com/lib/pq/
RUN git clone https://github.com/lib/pq .


