# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0

COPY . .

# Pre-load all gems into the environment 
RUN chmod -R 777 .
RUN chmod -R a+w /home/jekyll 
RUN chmod -R a+w /var/jekyll 
RUN chmod -R a+w /srv/jekyll 
RUN chmod -R a+w /usr/gem 
RUN mkdir -p /usr/gem/cache
RUN chown -R jekyll:jekyll /usr/gem/cache
# RUN rm -rf /usr/gem/cache
# RUN mkdir -p /usr/gem/cache 
# RUN gem install bundler
# RUN gem install minitest -v '5.14.0' --source 'https://rubygems.org'
# RUN gem install tzinfo -v '1.2.6' --source 'https://rubygems.org'
# RUN gem install public_suffix -v '4.0.3' --source 'https://rubygems.org/'
# RUN gem install multipart-post -v '2.1.1' --source 'https://rubygems.org/'
# RUN gem install faraday -v '0.17.3' --source 'https://rubygems.org/'
# RUN gem install kramdown -v '2.1.0' --source 'https://rubygems.org/'
# RUN gem install rouge -v '3.16.0' --source 'https://rubygems.org/'
# RUN gem install unicode-display_width -v '1.6.1' --source 'https://rubygems.org/'
# RUN gem install sawyer -v '0.8.2' --source 'https://rubygems.org/'
# RUN gem install octokit -v '4.16.0' --source 'https://rubygems.org/'
# RUN gem install jekyll-gist -v '1.5.0' --source 'https://rubygems.org/'
# RUN gem install octicons -v '9.5.0' --source 'https://rubygems.org/'
# RUN gem install sassc -v '2.2.1' --source 'https://rubygems.org/'
RUN bundle install
RUN jekyll build
