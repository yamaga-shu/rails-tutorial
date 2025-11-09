FROM ruby:3.4.7-trixie

ENV TZ Aisa/Tokyo

WORKDIR /web

COPY ./web/Gemfile /web
COPY ./web/Gemfile.lock /web

RUN bundle install
