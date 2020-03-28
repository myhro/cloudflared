#!/bin/sh

set -eu

curl -s https://github.com/cloudflare/cloudflared/releases | grep '/tag/' | head -1 | sed -E 's/^.*tag\/(.*)".*$/\1/'
