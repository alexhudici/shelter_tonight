FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /app

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

WORKDIR /app

CMD ["rails", "server", "-b", "0.0.0.0"]
