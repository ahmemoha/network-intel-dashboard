# Network Intel Dashboard - Local Development Helper
# ==========================================

# Default port for the local server
PORT ?= 8000

# Detect Operating System for the "open" command
OS := $(shell uname)
ifeq ($(OS), Darwin)
	OPEN_CMD := open
else
	OPEN_CMD := xdg-open
endif

.PHONY: help serve open clean

help: ## Show this help message
	@echo "Network Intel  Dashboard Manager"
	@echo "------------------------"
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

serve: ## Start a local Python HTTP server (requires Python 3)
	@echo "Starting local server at http://localhost:$(PORT)..."
	@echo "Press Ctrl+C to stop."
	@python3 -m http.server $(PORT)

open: ## Open the dashboard in the default browser
	@echo "Opening dashboard..."
	@$(OPEN_CMD) "http://localhost:$(PORT)/index.html" || start "http://localhost:$(PORT)/index.html"

dev: serve open ## Start server and open browser immediately
