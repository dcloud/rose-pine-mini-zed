# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the Rosé Pine theme for Zed editor, featuring three variants: Rosé Pine (dark), Rosé Pine Moon (dark), and Rosé Pine Dawn (light). The theme follows the Rosé Pine design system with its signature natural pine, faux fur, and soho vibes aesthetic.

## Build System

The theme uses the `@rose-pine/build` package to generate theme files from a template.

### Building Themes

To rebuild all theme variants from the template:

```sh
npx @rose-pine/build -t ./src/template.json -f hex -o themes/
```

This command:
- Takes the template from `src/template.json`
- Outputs hex color values (`-f hex`)
- Generates theme files in the `themes/` directory

## Architecture

### Template System

The theme uses a variable-based template system in `src/template.json`:

- **Variables**: Color placeholders like `$base`, `$text`, `$rose`, `$pine`, `$foam`, etc.
- **Variants**: The build tool replaces these variables with actual hex colors for each theme variant (main, moon, dawn)
- **Schema**: Follows Zed's theme schema v0.2.0 (`https://zed.dev/schema/themes/v0.2.0.json`)

### Generated Files

The `themes/` directory contains three generated JSON files:
- `rose-pine.json` - Main dark variant
- `rose-pine-moon.json` - Moon dark variant
- `rose-pine-dawn.json` - Dawn light variant

**IMPORTANT**: Never manually edit files in `themes/`. Always modify `src/template.json` and rebuild.

### Color System

The template defines comprehensive color mappings for:
- Editor elements (background, foreground, line numbers, gutters)
- UI elements (borders, panels, tabs, status bar)
- Syntax highlighting (keywords, strings, functions, etc.)
- Terminal ANSI colors
- Version control indicators
- Multi-player cursor colors

Opacity is specified using hex suffixes (e.g., `$muted88` for 88% opacity, `$text22` for 22% opacity).

## Development Workflow

1. Modify `src/template.json` to change theme colors or UI mappings
2. Run the build command to regenerate theme files
3. Test in Zed by reloading the theme
4. Commit changes to both the template and generated files
