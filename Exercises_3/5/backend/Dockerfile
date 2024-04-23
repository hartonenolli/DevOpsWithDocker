FROM golang:1.16

WORKDIR /app

RUN useradd -m appuser

RUN chown appuser /app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:3000

EXPOSE 8080

RUN go build

USER appuser

ENTRYPOINT ["./server"]