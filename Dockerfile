FROM golang:1.22.0

WORKDIR /app

COPY . .

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go mod download

RUN  go build -o /my_app

CMD ["/my_app"]
