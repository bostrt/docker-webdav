FROM golang:latest

WORKDIR /go/src/app
RUN git clone https://github.com/hacdias/webdav .
RUN go get -d -v ./...
RUN go install -v ./...

VOLUME ["/etc/webdav"]

CMD ["webdav"]

