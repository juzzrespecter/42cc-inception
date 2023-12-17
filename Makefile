.PHONY up prune

up:
	docker compose up --build

prune:
	docker system prune