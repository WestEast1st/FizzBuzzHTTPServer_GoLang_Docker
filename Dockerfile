FROM    golang:latest
RUN     go get github.com/gorilla/mux
RUN     go get github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
WORKDIR /go/src/github.com/WestEast1st/FizzBuzzHTTPServer_GoLang
RUN     go build main.go
EXPOSE  8080 
CMD     ["./main"]
