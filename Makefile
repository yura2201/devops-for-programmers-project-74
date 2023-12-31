compose-run:
	docker-compose up --abort-on-container-exit
compose-ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
compose-build:
	docker-compose build --force-rm app
compose-build-prod:
	docker-compose -f docker-compose.yml build --force-rm app
compose-start:
	docker-compose start
compose-stop:
	docker-compose stop