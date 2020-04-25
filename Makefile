help:
	cat Makefile

# start (or restart) the services
server: .FORCE
	docker-compose down --remove-orphans || true;
	docker-compose up

butch-server: .FORCE
	docker-compose down --remove-orphans || true;
	docker-compose up fastpages converter watcher butch-jekyll

# start (or restart) the services in detached mode
server-detached: .FORCE
	docker-compose down || true;
	docker-compose up -d

butch-server-detached: .FORCE
	docker-compose down || true;
	docker-compose up -d fastpages converter watcher butch-jekyll

# build or rebuild the services WITHOUT cache
build: .FORCE
	chmod 777 Gemfile.lock
	docker-compose stop || true; docker-compose rm || true;
	docker build --no-cache -t hamelsmu/fastpages-nbdev -f _action_files/fastpages-nbdev.Dockerfile .
	docker build --no-cache -t hamelsmu/fastpages-jekyll -f _action_files/fastpages-jekyll.Dockerfile .
	docker-compose build --force-rm --no-cache

butch-build: .FORCE
	chmod 777 Gemfile.lock
	docker-compose stop || true; docker-compose rm || true;
	docker build --no-cache -t hamelsmu/fastpages-nbdev -f _action_files/fastpages-nbdev.Dockerfile .
	docker build --no-cache -t butchland/fastpages-jekyll-butch -f _action_files/fastpages-jekyll-butch.Dockerfile .
	docker-compose build --force-rm --no-cache

# rebuild the services WITH cache
quick-build: .FORCE
	docker-compose stop || true;
	docker build -t hamelsmu/fastpages-nbdev -f _action_files/fastpages-nbdev.Dockerfile .
	docker build -t hamelsmu/fastpages-jekyll -f _action_files/fastpages-jekyll.Dockerfile .
	docker-compose build 

butch-quick-build: .FORCE
	docker-compose stop || true;
	docker build -t hamelsmu/fastpages-nbdev -f _action_files/fastpages-nbdev.Dockerfile .
	docker build -t butchland/fastpages-jekyll-butch -f _action_files/fastpages-jekyll-butch.Dockerfile .
	docker-compose build 

# convert word & nb without Jekyll services
convert: .FORCE
	docker-compose up converter

# stop all containers
stop: .FORCE
	docker-compose stop
	docker ps | grep fastpages | awk '{print $1}' | xargs docker stop

# remove all containers
remove: .FORCE
	docker-compose stop  || true; docker-compose rm || true;

# get shell inside the notebook converter service (Must already be running)
bash-nb: .FORCE
	docker-compose exec watcher /bin/bash

# get shell inside jekyll service (Must already be running)
bash-jekyll: .FORCE
	docker-compose exec jekyll /bin/bash

butch-bash-jekyll: .FORCE
	docker-compose exec butch-jekyll /bin/bash

# restart just the Jekyll server
restart-jekyll: .FORCE
	docker-compose restart jekyll

butch-restart-jekyll: .FORCE
	docker-compose restart butch-jekyll

.FORCE:
