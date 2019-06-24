FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
      && apt-get update && apt-get install -y \
      nodejs \
      postgresql-client \
      --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v 2.0.1

RUN mkdir /sample_blog
WORKDIR /sample_blog

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
