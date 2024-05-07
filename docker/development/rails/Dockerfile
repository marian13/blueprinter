##
# IMPORTANT:
#   Currently this `Dockerfile` is used only in the local environments (by `docker/development/docker-compose.yml`).
#   Make sure it is synced with `.github/workflows/ci.yml`.
##

##
# How to use ENV variables inside Dockefile?
# - https://docs.docker.com/engine/reference/builder/#environment-replacement
#
FROM timbru31/ruby-node:3.3-slim-20

##
# NOTE: `graphviz` is required for Rails ERD.
# - https://github.com/voormedia/rails-erd
#
# IMPORTANT: `graphviz` is NOT required by CI.
#
# IMPORTANT: `vim` is NOT required by CI. In is just for developement needs like `EDITOR=vim bundle open gem`.
#
RUN apt-get update -qq \
  && apt-get install --no-install-recommends -y git \
  && apt-get install --no-install-recommends -y make \
  && apt-get install --no-install-recommends -y gcc \
  && apt-get install --no-install-recommends -y build-essential \
  && apt-get install --no-install-recommends -y curl \
  && apt-get install --no-install-recommends -y libpq-dev \
  && apt-get install --no-install-recommends -y gnupg \
  && apt-get install --no-install-recommends -y graphviz \
  && apt-get install --no-install-recommends -y vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /bin

RUN mkdir -p /project

WORKDIR /project

COPY . /project

RUN task install

ENV IN_DOCKER_CONTAINER=true
