##
# IMPORTANT:
#   Currently this `Dockerfile` is used only in the local environments (by `docker/development/docker-compose.yml`).
#   Make sure it is synced with `.github/workflows/ci.yml`.
##

##
# Based on ruby image (https://hub.docker.com/_/ruby).
# Linted by hadolint (https://github.com/hadolint/hadolint).
# Dockerfile reference (https://docs.docker.com/engine/reference/builder).
#
ARG RUBY_VERSION

##
# How to use ENV variables inside Dockefile?
# - https://docs.docker.com/engine/reference/builder/#environment-replacement
#
FROM ruby:${RUBY_VERSION}-slim

##
# > An ARG declared before the FROM instruction can’t be used after the FROM.
# If you want to use it you need to declare it without the value as below.
# https://blog.bitsrc.io/how-to-pass-environment-info-during-docker-builds-1f7c5566dd0e
#
ARG RUBY_VERSION

##
# Node.js version.
# - https://github.com/nodesource/distributions
#
ARG NODE_VERSION

##
# Used in Gemfile.
# Allows to perform almost effort-less Ruby version updates.
# The only places where Ruby version should updated are `.env` and `.tool-versions`.
#
ENV RUBY_VERSION ${RUBY_VERSION}

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

##
# Installs Node.js (https://nodejs.org/).
# Installs Yarn (https://yarnpkg.com/).
#
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install --no-install-recommends -y nodejs \
  && apt-get install --no-install-recommends -y yarn \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /project

WORKDIR /project

COPY . /project

RUN task install

ENV IN_DOCKER_CONTAINER=true
