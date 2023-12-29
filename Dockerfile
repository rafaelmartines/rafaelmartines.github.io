FROM alpine:3.19.0

RUN apk update \
    && apk add gcc g++ make libffi-dev ruby-full ruby-dev \
    && gem install jekyll bundler \
    && mkdir app

WORKDIR /app

COPY . .

RUN BUNDLE_GEMFILE=/app/Gemfile bundle install

EXPOSE 4000
