FROM golang:latest

WORKDIR /go/src/app
RUN git clone https://github.com/hacdias/webdav .
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080
VOLUME ["/etc/webdav"]
VOLUME ["/data"]

CMD ["webdav"]

