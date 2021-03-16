#!/bin/sh

CONTAINER=digitalocean-ddns

if podman container exists "$CONTAINER"; then
  podman start "$CONTAINER"
else
  podman run -d --rm \
    --net=host \
    --name "$CONTAINER" \
    --security-opt=no-new-privileges \
    --env-file=/mnt/data/digitalocean-ddns/config.env \
    alcroito/digitalocean-dyndns:latest
fi
