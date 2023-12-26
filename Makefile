run:
	docker-compose up --abort-on-container-exit
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit