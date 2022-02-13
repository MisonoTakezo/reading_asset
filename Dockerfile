FROM ruby:2.5.1
ENV BUNDLER_VERSION 2.1.0
ENV LANG C.UTF-8

ENV APP_ROOT /usr/src/ra


WORKDIR $APP_ROOT

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get update -y && apt-get upgrade -y && apt-get install -y \
  vim \
  build-essential \
  inkscape \
  libpq-dev \
  nodejs \
  mysql-client \
  unzip \
  cron \
  ffmpeg

RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

COPY Gemfile      $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN gem update --system \
    && gem install bundler -v $BUNDLER_VERSION \
    && bundle install -j4

COPY . $APP_ROOT
