FROM ruby:3.0.2

# Install host dependencies
RUN apt-get clean all
RUN apt-get update -qq
RUN apt-get install -y \
    build-essential libpq-dev \
    curl gnupg2 apt-utils default-libmysqlclient-dev git \
    libcurl3-dev cmake libssl-dev pkg-config openssl \
    file wget python

ADD . /debug-app
WORKDIR /debug-app
RUN gem install bundler
RUN bundle install --redownload

COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000