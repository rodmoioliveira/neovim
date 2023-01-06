#!make

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; \
		{printf "\033[36m%-14s\033[0m %s\n", $$1, $$2}' | \
		sort

fmt: ## Format Lua code
	@fd . -e lua | xargs lua-format -i

.PHONY: help
.PHONY: fmt
