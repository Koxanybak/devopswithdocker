FROM ruby:2.6.0
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/rails-example-project ruby
WORKDIR ruby
RUN gem install bundler && bundle install
RUN rm ./config/credentials.yml.enc
RUN EDITOR=nano rails credentials:edit
ENV RAILS_LOG_TO_STDOUT=true
RUN rails db:migrate RAILS_ENV=production
RUN rake assets:precompile
EXPOSE 3000
CMD ["rails", "s", "-e", "production"]
