# Makefile for VS Code theme extension
# Author: Pablo
# This makefile helps with packaging, installing and testing the theme

.PHONY: all package install uninstall clean publish

# Extension name from package.json
EXTENSION_NAME := hc-monokai-p404
PUBLISHER := p404
VSIX_FILE := $(EXTENSION_NAME)-0.0.1.vsix

all: package install

# Package the extension into a vsix file
package:
	@echo "Packaging extension..."
	npx @vscode/vsce package

# Install the extension
install: package
	@echo "Installing extension..."
	code --install-extension $(VSIX_FILE)
	@echo "Extension installed. Please restart VS Code to apply changes."

# Force reload VS Code extensions (works on macOS)
reload:
	@echo "Reloading VS Code..."
	osascript -e 'tell application "Visual Studio Code" to quit'
	open -a "Visual Studio Code"

# Uninstall the extension
uninstall:
	@echo "Uninstalling extension..."
	code --uninstall-extension $(PUBLISHER).$(EXTENSION_NAME)

# Clean up build artifacts
clean:
	@echo "Cleaning up..."
	rm -f *.vsix

# Install and force reload in one command (for quicker testing)
test: install reload
	@echo "Theme installed and VS Code reloaded"

# Publish to VS Code Marketplace
publish: package
	@echo "Publishing extension to VS Code Marketplace..."
	@echo "Make sure you have logged in with 'npx @vscode/vsce login $(PUBLISHER)'"
	npx @vscode/vsce publish

help:
	@echo "Available commands:"
	@echo "  make package    - Package the extension into a vsix file"
	@echo "  make install    - Install the extension"
	@echo "  make uninstall  - Uninstall the extension"
	@echo "  make reload     - Restart VS Code (macOS only)"
	@echo "  make clean      - Clean up build artifacts"
	@echo "  make test       - Install and reload VS Code"
	@echo "  make publish    - Publish to VS Code Marketplace"
