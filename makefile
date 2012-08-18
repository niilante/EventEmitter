default:
	@@echo "Available commands: server, docs"

.PHONY: docs

# A basic HTTP server for testing
server:
	python -m SimpleHTTPServer

# Builds the API documentation
docs:
	dox < EventEmitter.js > docs/data.json
	dustc docs/api.dust docs/api.dust.js