FROM alpine
ADD bin/hello .
# ENTRYPOINT ["/hello"]
ENTRYPOINT ["/bin/sh "]