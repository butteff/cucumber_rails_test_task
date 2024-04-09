FROM ruby:3.2.2
WORKDIR /rails
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]
EXPOSE 3000