FROM ruby:2.7-alpine3.13

RUN apk --update add git build-base mariadb-dev nodejs bash tzdata imagemagick shared-mime-info --no-cache
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install -j4
COPY . /app
