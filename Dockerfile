FROM golang:1.14-alpine AS builder

ARG VERSION

RUN apk add alpine-sdk curl upx
ADD build.sh /usr/local/bin/
RUN /usr/local/bin/build.sh
RUN upx /go/bin/cloudflared

FROM alpine:latest

COPY --from=builder /go/bin/cloudflared /usr/local/bin/
