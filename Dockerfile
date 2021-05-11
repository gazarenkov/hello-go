FROM alpine
ADD bin/hello .
# ENTRYPOINT ["/hello"]
ENTRYPOINT ["/bin/sh", "-c", "--",  while true; do sleep 30; done;"]