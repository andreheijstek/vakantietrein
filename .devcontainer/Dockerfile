FROM ruby:3.0.2
RUN apt-get update \
    && apt-get install -y yarnpkg vim lsof gcc \
    && ln -s /usr/bin/yarnpkg /usr/local/bin/yarn \
    && rm -rf /var/lib/apt/lists/*
COPY load-profile.sh /etc/profile.d/
