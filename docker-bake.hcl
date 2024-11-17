variable "VERSION" {
  default = "latest"
}

target "docker-metadata-action" {
  labels = {
    "org.opencontainers.image.title" = "resticprofile"
    "org.opencontainers.image.description" = "Configuration profiles manager and scheduler for restic backup"
    "org.opencontainers.image.vendor" = "ttionya"
    "org.opencontainers.image.version" = "${VERSION}"
  }
}

target "_common" {
  inherits: ["docker-metadata-action"]
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
}

target "image-normal" {
  inherits: ["_common"]
  tags = [
    "ttionya/resticprofile:latest",
    "ttionya/resticprofile:${VERSION}",
    "ghcr.io/ttionya/resticprofile:latest",
    "ghcr.io/ttionya/resticprofile:${VERSION}"
  ]
}

target "image-docker" {
  inherits: ["_common"]
  args = {
    EXTRA_PACKAGES = "docker"
  }
  tags = [
    "ttionya/resticprofile:latest-docker",
    "ttionya/resticprofile:${VERSION}-docker",
    "ghcr.io/ttionya/resticprofile:latest-docker",
    "ghcr.io/ttionya/resticprofile:${VERSION}-docker"
  ]
}

group "default" {
  targets: ["image-normal", "image-docker"]
}