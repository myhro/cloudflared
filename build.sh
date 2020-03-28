#!/bin/sh

set -eu

TARBALL="https://github.com/cloudflare/cloudflared/archive/${VERSION}.tar.gz"

curl -sL "$TARBALL" | tar zxf -
cd "cloudflared-$VERSION/" || exit 1
go build -ldflags "-s -w" -o /go/bin/cloudflared ./cmd/cloudflared/
