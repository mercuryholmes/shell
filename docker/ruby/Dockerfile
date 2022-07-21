FROM ruby:3

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

# if not use docker-compose
# $ docker build -t ruby .
# $ docker run -it -d --name ruby -v `pwd`:/usr/src/app ruby
# $ docker exec -it ruby bash