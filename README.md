# resticprofile

[![Docker Pulls](https://img.shields.io/docker/pulls/ttionya/resticprofile?label=Docker%20Pulls&logo=docker)](https://hub.docker.com/r/ttionya/resticprofile) [![GitHub](https://img.shields.io/github/license/ttionya/resticprofile?label=License&logo=github)](https://github.com/ttionya/ttionya/resticprofile/blob/master/LICENSE)

Thanks to the great tool, [resticprofile](https://github.com/creativeprojects/resticprofile), but the [official image](https://hub.docker.com/r/creativeprojects/resticprofile) doesn't include any database clients. Therefore, this image is rebuilt based on the official image to include database clients.

Rebuilt to include the following database clients:

- [MySQL / MariaDB](https://pkgs.alpinelinux.org/packages?name=mariadb-client&branch=edge)
- [PostgreSQL 17](https://pkgs.alpinelinux.org/packages?name=postgresql17-client&branch=edge)
- [SQLite 3](https://pkgs.alpinelinux.org/packages?name=sqlite&branch=edge)

To support non-root users, this image also includes `supercronic`.

## Image Variants

### `ttionya/resticprofile:<version>`

This is the most basic image, which includes the database clients and `supercronic`.

### `ttionya/resticprofile:<version>-docker`

Contains all the features of the base image, plus additional `docker` command, so it will be relatively large. However, you can mount the `/var/run/docker.sock` file into the container to control other containers from within the container.

```bash
docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  ...
  ttionya/resticprofile:<version>-docker
```

## Schedule

Resticprofile images are rebuilt every [Sunday](https://github.com/creativeprojects/resticprofile/blob/master/.github/workflows/docker.yml), as per the release cycle detailed [here](https://creativeprojects.github.io/resticprofile/installation/docker/index.html#release-cycle-on-docker-hub).

This image will be rebuilt a bit later, approximately every Monday at 6:00 AM.

## License

MIT

Resticprofile is released under the GPL-3.0 license. While my repository does not include its source code, I am unsure if using the MIT license is appropriate. If there are any concerns or objections, please submit an issue to let me know.
