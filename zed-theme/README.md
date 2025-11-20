# HC Monokai P404 - Zed Theme

This is a Zed editor port of the HC Monokai P404 theme originally created for Visual Studio Code.

## About

A high contrast Monokai theme with a dark charcoal background and bright, vibrant syntax highlighting, adapted for the Zed code editor.

## Features

- **High contrast** design optimized for readability
- **Pure black** background (#000000) that reduces eye strain
- **Bright cyan accents** (#43B9D8) for UI elements and borders
- **Classic Monokai** syntax highlighting colors:
  - Comments: Orange (#FD971F)
  - Strings: Yellow (#E6DB74)
  - Keywords: Magenta (#F92672)
  - Functions: Green (#A6E22E)
  - Types: Cyan (#66D9EF)
  - Numbers: Purple (#AE81FF)
- Clean, distraction-free interface with consistent cyan borders

## Installation

### From Zed Extensions (Coming Soon)

Once published to the Zed extensions marketplace:

1. Open Zed editor
2. Press `Cmd+Shift+P` (macOS) or `Ctrl+Shift+P` (Linux/Windows)
3. Type "extensions"
4. Search for "HC Monokai P404"
5. Click Install
6. Go to Settings → Theme and select "HC Monokai P404"

### Manual Installation (Current Method)

1. Copy the theme file to your Zed themes directory:
   - **macOS/Linux**: `~/.config/zed/themes/`
   - **Windows**: `%USERPROFILE%\AppData\Roaming\Zed\themes\`

2. Open Zed and go to Settings

3. Select "HC Monokai P404" from the theme list

#### Quick Install (macOS/Linux)

```bash
# Create themes directory if it doesn't exist
mkdir -p ~/.config/zed/themes

# Copy theme file from this extension
cp themes/hc-monokai-p404.json ~/.config/zed/themes/
```

#### Quick Install (Windows PowerShell)

```powershell
# Create themes directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\AppData\Roaming\Zed\themes"

# Copy theme file from this extension
Copy-Item themes/hc-monokai-p404.json "$env:USERPROFILE\AppData\Roaming\Zed\themes\"
```

## Color Palette

| Element | Color | Hex |
|---------|-------|-----|
| Background | Black | #000000 |
| Foreground | White | #FFFFFF |
| Accent/Border | Cyan | #43B9D8 |
| Focus | Orange | #FD971F |
| Comment | Orange | #FD971F |
| String | Yellow | #E6DB74 |
| Keyword | Magenta | #F92672 |
| Function | Green | #A6E22E |
| Type | Cyan | #66D9EF |
| Number | Purple | #AE81FF |

## Transformation Notes

This theme was automatically transformed from the VS Code theme format to Zed's theme format. Key mappings include:

- VS Code `tokenColors` → Zed `syntax` object
- VS Code `colors` → Zed UI element properties
- Terminal ANSI colors preserved from original theme
- UI borders and accents consistently use the cyan (#43B9D8) color
- Font styles (bold, italic) mapped to Zed's font_weight and font_style properties

## Publishing to Zed Extensions Marketplace

To make this theme available in the Zed extensions marketplace, follow these steps:

### Prerequisites

1. Ensure the extension has a valid LICENSE file (✓ MIT License included)
2. Ensure `extension.toml` is properly configured (✓ Done)
3. Theme files are in the `themes/` directory (✓ Done)

### Publishing Steps

1. **Create a separate repository** (optional but recommended):
   ```bash
   # You can use this directory structure or create a new repo
   # The zed-theme/ directory is ready to be its own repository
   ```

2. **Fork the Zed extensions repository**:
   - Go to https://github.com/zed-industries/extensions
   - Click "Fork"

3. **Add your theme as a submodule**:
   ```bash
   # Clone your fork
   git clone https://github.com/YOUR_USERNAME/extensions
   cd extensions

   # Add this theme as a submodule (use HTTPS URL)
   git submodule add https://github.com/p404/hc-monokai-p404 extensions/hc-monokai-p404
   ```

4. **Update extensions.toml**:
   Add this entry to the top of `extensions.toml`:
   ```toml
   [hc-monokai-p404]
   submodule = "extensions/hc-monokai-p404"
   path = "zed-theme"
   version = "0.0.1"
   ```

5. **Create a Pull Request**:
   ```bash
   git add .
   git commit -m "Add HC Monokai P404 theme extension"
   git push origin main
   ```
   Then open a PR at https://github.com/zed-industries/extensions

6. **Wait for review**: Once your PR is merged, the theme will be automatically published to the Zed extensions marketplace!

### Alternative: Separate Repository Approach

If you want to create a dedicated repository for just the Zed extension:

1. Create a new repository called `hc-monokai-p404-zed`
2. Copy the contents of the `zed-theme/` directory to it
3. Follow the same submodule steps above with the new repository URL

## Source

Original VS Code theme: [HC Monokai P404](https://github.com/p404/hc-monokai-p404)

## License

[See LICENSE file](./LICENSE)
