# syntax=docker/dockerfile:1

# See https://github.com/creativeprojects/resticprofile/blob/master/build/Dockerfile
FROM creativeprojects/resticprofile:0.33.0

ARG EXTRA_PACKAGES

RUN apk add --no-cache bash mariadb-client postgresql18-client sqlite supercronic ${EXTRA_PACKAGES:""}

ENTRYPOINT ["resticprofile"]
CMD ["--help"]
