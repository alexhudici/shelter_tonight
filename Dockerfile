FROM ruby:2.4.0

RUN apt-get update && apt-get -y install nodejs
RUN gem install bundler

ADD Gemfile /tmp
ADD Gemfile.lock /tmp

WORKDIR /tmp

RUN bundle install

ADD . /var/www/app

WORKDIR /var/www/app

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
