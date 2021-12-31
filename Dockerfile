FROM docker.io/ruby:3.0.3-alpine3.15

WORKDIR /app
ENV TZ=Asia/Tokyo
ENV RAILS_ENV=production

#COPY Gemfile .
#COPY Gemfile.lock .

RUN apk update && \
    apk add --no-cache yarn tzdata libxml2-dev curl-dev make gcc libc-dev g++ imagemagick6-dev postgresql-dev vim && \
    # bundle install --without development test && \
    gem install foreman && \
    mkdir log && \
    touch log/production.log && \
    chmod 777 log/production.log && \
    rm -rf /usr/local/bundle/cache/* /usr/local/share/.cache/* /var/cache/* /tmp/*

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh
