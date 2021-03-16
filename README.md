# digitalocean-ddns for UDM Utilities

This is a a packaging of the DO_DNS by [alcroito](https://github.com/alcroito/digitalocean-dyndns) for usage wth the [UDM-utilities by boostchicken](https://github.com/boostchicken/udm-utilities).

## Requirements

1. You have successfully setup the on boot script described [here](https://github.com/boostchicken/udm-utilities/tree/master/on-boot-script)
2. You must have a DigitalOcean profile with at least one domain.
3. You must have a valid DigitalOcean api token

## Customization

Update [do_ddns.toml](config/do_ddns.toml) with the following options:
- your DigitalOcean api token
- your domain root
- each subdomain you'd like to point at your udm-pro

## Steps

2. Make a directory for your configuration

    ```sh
    mkdir -p /mnt/data/digitalocean-ddns
    ```

3. Create a [digitalocean-ddns configuration](config/do_ddns.toml) in `/mnt/data/digitalocean-ddns` and update the configuration to meet your needs.
4. Copy [30-digitalocean-ddns.sh](on_boot.d/30-digitalocean-ddns.sh) to `/mnt/data/on_boot.d`.
5. Execute /mnt/data/on_boot.d/[30-digitalocean-ddns.sh](on_boot.d/30-digitalocean-ddns.sh)
7. Execute `podman logs digitalocean-ddns` to verify the continer is running without error.

### Useful commands

```sh
# view digitalocean-ddns logs to verify the continer is running without error.
podman logs digitalocean-ddns
```
