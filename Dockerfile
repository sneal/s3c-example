FROM docker.io/library/golang:1.17.1

WORKDIR /app
RUN go build -o /usr/local/bin/s3c-example .
CMD s3c-example
