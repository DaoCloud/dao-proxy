FROM golang:1.5.2

COPY . /go/src/github.com/DaoCloud/dao-proxy
WORKDIR /go/src/github.com/DaoCloud/dao-proxy

ENV GOPATH /go/src/github.com/DaoCloud/dao-proxy/Godeps/_workspace:$GOPATH
RUN CGO_ENABLED=0 go install -v -a

EXPOSE 80

ENTRYPOINT ["dao-proxy"]
