#!make

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; \
		{printf "%-20s %s\n", $$1, $$2}' | \
		sort

bash-all: bash-fmt bash-check bash-lint ## Run all bash tests

bash-check: ## Check format bash code
	@find . -type f -name "*.sh" -not -path "./target/*" | xargs shfmt -i 2 -d

bash-deps: ## Install bash dependencies
	@sudo apt-get install -y moreutils

bash-fmt: ## Format bash code
	@find . -type f -name "*.sh" -not -path "./target/*" | xargs shfmt -i 2 -w

bash-lint: ## Check lint bash code
	@find . -type f -name "*.sh" -not -path "./target/*" | xargs shellcheck -o all

doc-changelog: ## Write CHANGELOG.md
	@git cliff -o CHANGELOG.md

lua-fmt: ## Format Lua code
	@find . -name "*.lua" | xargs lua-format -i --indent-width=2 --spaces-inside-table-braces --no-align-table-field --break-after-table-lb --break-before-table-rb --single-quote-to-double-quote

typos: ## Check typos
	@typos

typos-fix: ## Fix typos
	@typos -w

PHONY: help
PHONY: bash-all
PHONY: bash-check
PHONY: bash-deps
PHONY: bash-fmt
PHONY: bash-lint
PHONY: doc-changelog
PHONY: lua-fmt
PHONY: typos
PHONY: typos-fix
