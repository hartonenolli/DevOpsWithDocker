FROM golang:1.16

WORKDIR /app

COPY . .

RUN useradd -m appuser && \
    chown appuser /app && \
    go build && \
    rm -rf /go/pkg /go/src

EXPOSE 8080

USER appuser

ENTRYPOINT ["./server"]
