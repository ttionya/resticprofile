# See https://github.com/creativeprojects/resticprofile/blob/master/build/Dockerfile
FROM creativeprojects/resticprofile:0.27.1

RUN apk add --no-cache bash mariadb-client postgresql16-client sqlite supercronic

ENTRYPOINT ["resticprofile"]
CMD ["--help"]
