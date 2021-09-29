FROM harbor.plat-svcs.pez.vmware.com/library/alpine:3.14

COPY ./s3c-binary/s3c-example /usr/local/bin 
ENTRYPOINT ["s3c-example"]
