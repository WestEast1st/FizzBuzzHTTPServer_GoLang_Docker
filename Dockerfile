FROM    golang:latest AS build-env 
WORKDIR /bin
ADD     ./FizzBuzzHTTPServer_GoLang/bin  /bin

FROM alpine
WORKDIR /bin

EXPOSE  8080 
CMD     ["./main"]
