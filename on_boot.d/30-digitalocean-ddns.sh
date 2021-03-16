#!/bin/sh

CONTAINER=digitalocean-ddns

if podman container exists "$CONTAINER"; then
  podman start "$CONTAINER"
else
  podman run -d --rm \
    --net=host \
    --name "$CONTAINER" \
    --security-opt=no-new-privileges \
    --env DO_DYNDNS_CONFIG=/config/do_ddns.toml \
    -v /mnt/data/digitalocean-ddns/do_ddns.toml:/config/do_ddns.toml
    alcroito/digitalocean-dyndns:latest
fi
