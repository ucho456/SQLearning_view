.PHONY: help build-local up ps
.DEFAULT_GOAL := help

build-local: ## Build docker image to local development
	docker compose build

up: ## Do docker compose up with hot reload
	docker compose up

ps: ## Check container status
	docker compose ps

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'