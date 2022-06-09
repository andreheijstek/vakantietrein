FROM ruby:3.0.2
RUN apt-get update \
    && apt-get install -y yarnpkg vim \
    && ln -s /usr/bin/yarnpkg /usr/local/bin/yarn \
    && rm -rf /var/lib/apt/lists/* \
    && yarn add gcc
