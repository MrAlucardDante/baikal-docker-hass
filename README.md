# Baikal

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/MrAlucardDante/baikal) [![docker build](https://github.com/MrAlucardDante/baikal-docker-hass/actions/workflows/docker-build.yml/badge.svg)](https://github.com/MrAlucardDante/baikal-docker-hass/actions/workflows/docker-build.yml) ![Docker Pulls](https://img.shields.io/docker/pulls/MrAlucardDante/baikal) ![Docker Architectures](https://img.shields.io/badge/arch-amd64%20%7C%20arm32v7%20%7C%20arm64v8%20%7C%20i386-informational)

This dockerfile provides a ready-to-go [Baikal server](http://sabre.io/baikal/).

For more details, see [ckulka/baikal-docker (GitHub)](https://github.com/ckulka/baikal-docker).

## Supported tags and respective Dockerfile links

I follow the same version naming scheme as [Baikal](http://sabre.io/baikal/) themselves.

The following tags support multiple architectures, e.g. `amd64`, `arm32v7`, `arm64v8` and `i386`.

- [`0.9.4`, `latest`](https://github.com/MrAlucardDante/baikal-docker-hass/blob/0.9.4/Dockerfile)
- [`0.9.3`](https://github.com/MrAlucardDante/baikal-docker-hass/blob/0.9.3/Dockerfile)

## Quick reference

- **Where to file issues**:
  [https://github.com/MrAlucardDante/baikal-docker-hass/issues](https://github.com/MrAlucardDante/baikal-docker-hass/issues)
- **Supported architectures** ([more info](https://github.com/docker-library/official-images#architectures-other-than-amd64)):
  `amd64`, `arm32v7`, `arm64v8`, `i386`
- **Image updates**:
  [PRs for MrAlucardDante/baikal-docker-hass](https://github.com/MrAlucardDante/baikal-docker-hass/pulls)
- **Source of this description**:
  [https://github.com/MrAlucardDante/baikal-docker-hass](https://github.com/MrAlucardDante/baikal-docker-hass)

## What is Baikal?

From [sabre.io/baikal](http://sabre.io/baikal/):

> Baikal is a Cal and CardDAV server, based on sabre/dav, that includes an administrative interface for easy management.
>
> For more information, read the main website at baikal-server.com.
>
> Baikal is developed by Net Gusto and fruux.

## How to use this image

The following command will start Baikal:

```bash
docker run --rm -it -p 80:80 ghcr.io/mralucarddante/baikal-docker-hass:latest
```

Alternatively, use the provided [examples/docker-compose.yaml](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/examples/docker-compose.yaml) from the Git repository:

```bash
docker-compose up
```

You can now open [http://localhost](http://localhost) or [http://host-ip](http://host-ip) in your browser and use Baikal.

### Persistent Data

The image exposes the `/var/www/baikal/Specific` and `/var/www/baikal/config` folders, which contain the persistent data. These folders should be part of a regular backup.

If you want to use local folders instead of Docker volumes, see [examples/docker-compose.localvolumes.yaml](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/examples/docker-compose.localvolumes.yaml) to avoid file permission issues.

When the container starts, the startup script `/docker-entrypoint.d/40-fix-baikal-file-permissions.sh` (https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/files/docker-entrypoint.d/nginx/40-fix-baikal-file-permissions.sh) ensures that the file permissions are correct. You can disable this behaviour by setting the environment variable `BAIKAL_SKIP_CHOWN` to any value, e.g. `FALSE`.

### Further Guides

You can find more installation and configuration guides here:

- [Email Guide](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/docs/email-guide.md)
- [SSL Certificate Guide](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/docs/ssl-certificates-guide.md)
- [systemd Guide](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/docs/systemd-guide.md)
- [Unraid Installation Guide](https://github.com/MrAlucardDante/baikal-docker-hass/blob/master/docs/unraid-installation-guide.md)
