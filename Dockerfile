FROM    golang:latest AS build-env 
RUN     go get github.com/gorilla/mux
RUN     go get github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
WORKDIR /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
RUN     go build -o main.go

FROM alpine
WORKDIR /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang

EXPOSE  8080 
CMD     ["./main"]
