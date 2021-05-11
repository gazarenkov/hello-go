FROM alpine
ADD bin/hello .
# ENTRYPOINT ["/hello"]
ENTRYPOINT ["/bin/sh", "-c", "--", "while true; do sleep 30; done;"]


FROM golang:1.14-alpine AS builder
RUN 
ADD . /xcort/
WORKDIR /xcort
RUN GOOS=linux go build -o bin/xcstorage main.go
RUN GOOS=linux go build -o bin/xcli cli/main.go
FROM alpine
COPY --from=builder /xcort/bin/* ./
ENTRYPOINT ["/xcstorage"]