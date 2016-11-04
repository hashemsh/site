FROM convox/jekyll
RUN gem install algoliasearch-jekyll
RUN bundle install

COPY _config/nginx.conf /etc/nginx/server.d/convox.conf

COPY . /app
CMD ["_bin/web"]
