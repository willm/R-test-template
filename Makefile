test:
	docker-compose down
	docker-compose build
	docker-compose up --exit-code-from tests tests
