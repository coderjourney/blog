FROM ruby:2.3.3

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists

# Pre-install nokogiri to pre-build native extension
RUN gem install nokogiri -v "1.7.0.1"

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD bundle exec hanami server --host=0.0.0.0 -p $PORT
