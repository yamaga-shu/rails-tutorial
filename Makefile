COMPOSE_FILE := ./infra/local/compose.yml
DOCKER_COMPOSE := docker compose -f $(COMPOSE_FILE)

.PHONY: build
build:
	@$(DOCKER_COMPOSE) build --no-cache

.PHONY: up
up:
	@$(DOCKER_COMPOSE) up -d

.PHONY: down
down:
	@$(DOCKER_COMPOSE) down

.PHONY: web-sh
web-sh:
	@$(DOCKER_COMPOSE) exec web bash