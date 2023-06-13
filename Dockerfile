# syntax=docker/dockerfile:1

FROM golang:1.20.5

WORKDIR /build

COPY go.mod go.sum ../
RUN go mod download

COPY *.go ../

RUN go build -o /linkshorter .../cmd/shortURL/main.go

CMD ["/linkshorter"]
