FROM alpine
ADD bin/hello .
# ENTRYPOINT ["/hello"]
ENTRYPOINT ["/bin/sh", "-c", "--", "while true; do sleep 30; done;"]


FROM golang:1.14-alpine AS builder
RUN mkdir /xcort
ADD . /xcort/
WORKDIR /xcort
RUN GOOS=linux go build -o bin/hello main.go
FROM alpine
COPY --from=builder /xcort/bin/* ./
ENTRYPOINT ["/xcstorage"]