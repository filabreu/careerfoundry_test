FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential sqlite3 nodejs
RUN mkdir /careerfoundry_test
WORKDIR /careerfoundry_test
ADD Gemfile /careerfoundry_test/Gemfile
ADD Gemfile.lock /careerfoundry_test/Gemfile.lock
RUN bundle install
ADD . /careerfoundry_test
