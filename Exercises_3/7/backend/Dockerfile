FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN adduser -D appuser && \
    go build && \
    rm -rf /go/pkg /go/src

EXPOSE 8080

USER appuser

ENTRYPOINT ["./server"]
