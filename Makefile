#!make

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; \
		{printf "\033[36m%-14s\033[0m %s\n", $$1, $$2}' | \
		sort

changelog: ## Autogenerate CHANGELOG.md
	@docker run -t -v "$(shell pwd)":/app/ orhunp/git-cliff:latest --config cliff.toml --output CHANGELOG.md

fmt: ## Format Lua code
	@fd . -e lua | xargs lua-format -i

perf: ## Write startuptime performance file
	@fd . -e lua | xargs nvim --startuptime perf.log -p

perf-hist: ## See performance history
	@rg 'NVIM STARTED' perf.log

.PHONY: help
.PHONY: changelog
.PHONY: fmt
.PHONY: perf
.PHONY: perf-hist
