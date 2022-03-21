FROM ruby:3.1.1
WORKDIR /app

RUN apt-get update -qq
COPY . .

RUN gem install bundler 
RUN bundle install

EXPOSE 4000
CMD ["bundle", "exec, "jekyll" serve", "--host", "0.0.0.0"]