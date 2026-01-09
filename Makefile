.PHONY: help docker-up docker-down server-run generate-client create-migration app-build-runner app-slang kill-server

# Display available actions
help:
	@echo "Available actions:"
	@echo "  docker-up        - Start Docker services (PostgreSQL and Redis)"
	@echo "  docker-down      - Stop Docker services"
	@echo "  server-run       - Run the server in a new terminal"
	@echo "  generate-client  - Generate client files"
	@echo "  create-migration - Create a new migration"
	@echo "  app-build-runner - Run build_runner for the app"
	@echo "  app-slang        - Generate slang localization files for the app"
	@echo "  kill-server      - Kill processes on Serverpod ports (8080, 8081, 8082)"

# Start the Docker services (PostgreSQL and Redis)
docker-up:
	cd proximitreats_server && docker-compose up -d

# Stop the Docker services
docker-down:
	cd proximitreats_server && docker-compose down

# Run the server in a new terminal
server-run:
	osascript -e 'tell app "Terminal" to do script "cd \"$(PWD)/proximitreats_server\" && dart bin/main.dart --apply-migrations"'

# Generate the client files
generate-client:
	cd proximitreats_server && serverpod generate

# Create a new migration
create-migration:
	cd proximitreats_server && serverpod create-migration

# Run build_runner for the app
app-build-runner:
	cd proximitreats_app && dart run build_runner build --delete-conflicting-outputs

# Generate slang localization files for the app
app-slang:
	cd proximitreats_app && fvm dart run slang

# Kill processes running on Serverpod ports
kill-server:
	@echo "Killing processes on Serverpod ports..."
	@lsof -ti:8080 | xargs kill -9 2>/dev/null || echo "No process on port 8080"
	@lsof -ti:8081 | xargs kill -9 2>/dev/null || echo "No process on port 8081"
	@lsof -ti:8082 | xargs kill -9 2>/dev/null || echo "No process on port 8082"
	@echo "Done!"