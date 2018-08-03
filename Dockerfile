FROM    golang:latest AS build-env 
RUN     go get github.com/gorilla/mux
WORKDIR /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
ADD    ./FizzBuzzHTTPServer_GoLang  /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
RUN    cd ./bin && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./fizzbuzz ../main.go  

FROM alpine
WORKDIR /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang/bin
COPY --from=build-env /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang/bin/fizzbuzz ./
EXPOSE  8080
ENTRYPOINT ./fizzbuzz
