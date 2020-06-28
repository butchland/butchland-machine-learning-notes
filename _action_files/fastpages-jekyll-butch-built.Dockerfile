# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0

ENV BUNDLE_PATH=$GEM_HOME
COPY . .

# Pre-load all gems into the environment 
RUN chmod -R 777 .
# RUN chmod -R a+w /home/jekyll 
# RUN chmod -R a+w /var/jekyll 
# RUN chmod -R a+w /srv/jekyll 
RUN mkdir -p /usr/gem/cache
RUN chmod -R a+w /usr/gem 
RUN chown -R jekyll:jekyll /usr/gem/cache
RUN gem install bundler
RUN bundle install
#RUN bundle clean --force
#RUN jekyll build
