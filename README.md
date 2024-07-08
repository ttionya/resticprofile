# resticprofile

[![Docker Pulls](https://img.shields.io/docker/pulls/ttionya/ttionya/resticprofile?label=Docker%20Pulls&logo=docker)](https://hub.docker.com/r/ttionya/resticprofile) [![GitHub](https://img.shields.io/github/license/ttionya/ttionya/resticprofile?label=License&logo=github)](https://github.com/ttionya/ttionya/resticprofile/blob/master/LICENSE)

Thanks to the great tool, [resticprofile](https://github.com/creativeprojects/resticprofile), but the [official image](https://hub.docker.com/r/creativeprojects/resticprofile) doesn't include any database clients. Therefore, this image is rebuilt based on the official image to include database clients.

Rebuilt to include the following database clients:

- [MySQL / MariaDB](https://pkgs.alpinelinux.org/packages?name=mariadb-client&branch=edge)
- [PostgreSQL 16](https://pkgs.alpinelinux.org/packages?name=postgresql16-client&branch=edge)
- [SQLite 3](https://pkgs.alpinelinux.org/packages?name=sqlite&branch=edge)

To support non-root users, this image also includes `supercronic`.

## Schedule

Resticprofile images are rebuilt every [Sunday](https://github.com/creativeprojects/resticprofile/blob/master/.github/workflows/docker.yml), as per the release cycle detailed [here](https://creativeprojects.github.io/resticprofile/installation/docker/index.html#release-cycle-on-docker-hub).

This image will be rebuilt a bit later, approximately every Monday at 6:00 AM.

## License

MIT

Resticprofile is released under the GPL-3.0 license. While my repository does not include its source code, I am unsure if using the MIT license is appropriate. If there are any concerns or objections, please submit an issue to let me know.
