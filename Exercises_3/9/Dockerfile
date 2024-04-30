FROM golang:1.16-alpine AS builder

WORKDIR /app

COPY . .

RUN go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -o server . && \
    rm -rf /go/pkg /go/src && \
    adduser -D appuser

FROM scratch

WORKDIR /app

EXPOSE 8080

COPY --from=builder /etc/passwd /etc/passwd

USER appuser

COPY --from=builder /app/server ./server

ENTRYPOINT ["./server"]
