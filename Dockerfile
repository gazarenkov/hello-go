FROM golang:1.14-alpine AS builder
RUN mkdir /hello
ADD . /hello/
WORKDIR /hello
RUN GOOS=linux go build -o bin/hello main.go
FROM alpine
COPY --from=builder /hello/bin/* ./
ENTRYPOINT ["/hello"]