FROM sbilo/stellar-builder:latest as builder

FROM ubuntu:latest

COPY --from=builder /go/bin/bifrost /bin 
ENTRYPOINT ["bifrost","server"]

