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

### Manual Installation

1. Copy the `hc-monokai-p404.json` file to your Zed themes directory:
   - **macOS/Linux**: `~/.config/zed/themes/`
   - **Windows**: `%USERPROFILE%\AppData\Roaming\Zed\themes\`

2. Open Zed and go to Settings

3. Select "HC Monokai P404" from the theme list

### Quick Install (macOS/Linux)

```bash
# Create themes directory if it doesn't exist
mkdir -p ~/.config/zed/themes

# Copy theme file
cp hc-monokai-p404.json ~/.config/zed/themes/
```

### Quick Install (Windows PowerShell)

```powershell
# Create themes directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\AppData\Roaming\Zed\themes"

# Copy theme file
Copy-Item hc-monokai-p404.json "$env:USERPROFILE\AppData\Roaming\Zed\themes\"
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

## Source

Original VS Code theme: [HC Monokai P404](https://github.com/p404/hc-monokai-p404)

## License

[See main repository LICENSE](../LICENSE)
