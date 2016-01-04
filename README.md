# Dao Proxy

========

Automated Discovery Nginx Proxy, makes [Docker Compose](https://github.com/docker/compose) works like Heroku with 3 lines of code.

Dao Proxy can automated discovery containers created by [Docker Compose](https://github.com/docker/compose).

## Features

* **Everything in a single container** — no dependeny, no spf
* **Simple & Replayable** — based on nginx and inotify
* **Swarm Support** — hahaha
* **Overlay Network Support** — hahaha
* **Extendable** — can work with haproxy


## Quick Start

### Prerequisites

docker compose installed

### Run a 2048 game like Herok

A docker-compose.yml looks like this:

	lb:
	  image: daocloud/dao-proxy
	  ports: 80:80
	web:
      image: alexwhen/docker-2048
      
Run Command
      
	docker-compose up -d
	docker-compose scale web=3
	
## Usage


## Advanced Use Case

* [Blue Green Deployment](http://google.com/)



