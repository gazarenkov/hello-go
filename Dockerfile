FROM alpine
ADD bin/*
ENTRYPOINT ["/hello"]