FROM ruby:2.7.7
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn imagemagick python sqlite3 libsqlite3-dev\
    && mkdir /myapp
WORKDIR /myapp
