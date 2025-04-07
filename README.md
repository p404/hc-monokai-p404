# HC Monokai P404

A high contrast Monokai theme for Visual Studio Code with a dark charcoal background and bright, vibrant syntax highlighting.

## Features

- **High contrast** design optimized for readability
- **Dark charcoal** background (#000000) that reduces eye strain
- **Bright cyan accents** (#43B9D8) for UI elements
- **Classic Monokai** syntax highlighting colors
- Clean, distraction-free interface

## Screenshots

[Add screenshots here to showcase your theme]

## Installation

### VS Code Marketplace

1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X / Cmd+Shift+X)
3. Search for "HC Monokai P404"
4. Click Install

### Manual Installation

```bash
# Install from .vsix file
code --install-extension hc-monokai-p404-[version].vsix
```

## Development

### Prerequisites

- Node.js
- npm/yarn
- VS Code Extension CLI (`@vscode/vsce`)

### Available Commands

This extension includes a Makefile with the following commands:

```bash
make package    # Package the extension into a .vsix file
make install    # Install the extension locally
make uninstall  # Uninstall the extension
make reload     # Restart VS Code (macOS only)
make clean      # Clean up build artifacts
make test       # Install and reload VS Code
make publish    # Publish to VS Code Marketplace
```

## Publishing

To publish the extension to the VS Code Marketplace:

```bash
# Make sure you have a Personal Access Token
make publish
```

## License

[Include license information here]

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgements

Based on the classic Monokai color scheme with high contrast modifications.

---

**Enjoy!**
