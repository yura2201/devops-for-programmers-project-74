### Preconditions:
1. Stable Internet access.
2. [Install Docker](https://docs.docker.com/get-docker/)
3. [Install Docker Compose](https://github.com/docker/compose)
4. [Install Make](https://github.com/wkusnierczyk/make)
5. Configure database:
    - The project is already configured to interact with a Postgres Database by declaring an appropriate service in a [docker-compose.yml](./docker-compose.yml).
    - To run with a different db requisites, follow the [Docker reference](https://hub.docker.com/_/postgres)
6. Configure web server Caddy, if needed. 
   [Caddy image](https://hub.docker.com/_/caddy?tab=description) is used to implement proxy. ~~~~

### Docker image
This project is intended to show some features of a Docker, docker-compose and its integration abilities. 
The core of the project is a [Docker image](https://hub.docker.com/r/yura2201/devops-for-programmers-project-74/tags), that contains simple Node-based fastify project.  

### Run
1. Run test:
   - using make:
   ``make ci``
   - regular:
   ``docker-compose -f docker-compose.yml up --abort-on-container-exit``
2. Run app:
   - using make:
   ``make run``
   - regular:
   ``docker-compose up --abort-on-container-exit``
   
#### Environment changes
In case of abnormal behaviour as a result of components versions change, it's better clear all created volumes, performing ``docker compose down -v``

### Hexlet tests and linter status:
[![Actions Status](https://github.com/yura2201/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/yura2201/devops-for-programmers-project-74/actions)

[![DockerHub Integration Status On Push](https://github.com/yura2201/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg?event=push)](https://github.com/yura2201/devops-for-programmers-project-74/actions)