FROM ruby:3.1.3-alpine

RUN apk add \
  build-base \
  postgresql-dev \
  tzdata \
  nodejs

WORKDIR /opt/restful

COPY . .
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]















