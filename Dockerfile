# syntax=docker/dockerfile:1

# See https://github.com/creativeprojects/resticprofile/blob/master/build/Dockerfile
FROM creativeprojects/resticprofile:0.30.0

ARG EXTRA_PACKAGES

RUN apk add --no-cache bash mariadb-client postgresql17-client sqlite supercronic ${EXTRA_PACKAGES:""}

ENTRYPOINT ["resticprofile"]
CMD ["--help"]
