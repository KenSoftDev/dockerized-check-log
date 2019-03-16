FROM golang:alpine
RUN apk --no-cache add git && \
    go get github.com/mackerelio/go-check-plugins && \
    cd $(go env GOPATH)/src/github.com/mackerelio/go-check-plugins/check-log && \
    go install
ENTRYPOINT ["check-log"]
