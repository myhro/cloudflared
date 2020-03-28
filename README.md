myhro/cloudflared
=================

Docker image for [cloudflared].

## Usage

`docker-compose.yml`:

```yaml
---
version: "3.0"
services:
  app:
    image: myhro/cloudflared
    command: cloudflared tunnel --no-autoupdate
    environment:
      - TUNNEL_HOSTNAME=host.example.com
      - TUNNEL_URL=http://172.17.0.1:8080
    restart: unless-stopped
    volumes:
      - /home/runner/.cloudflared/:/root/.cloudflared/
```

The `--no-autoupdate` flag is needed, otherwise the binary can try to update itself and end up crashing.


[cloudflared]: https://github.com/cloudflare/cloudflared
