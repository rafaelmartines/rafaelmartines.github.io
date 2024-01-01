FROM alpine:3.19.0

RUN apk update \
    && apk add gcc g++ make libffi-dev ruby-full ruby-dev bash git npm \
    && gem install jekyll bundler \
    && mkdir app \
    && git config --global --add safe.directory /app

WORKDIR /app

COPY . .

RUN BUNDLE_GEMFILE=/app/Gemfile bundle install

EXPOSE 4000
