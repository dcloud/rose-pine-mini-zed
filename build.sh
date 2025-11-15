#!/bin/bash

# Build themes from template
npx @rose-pine/build -t ./src/template.json -f hex -o themes/

# Rename generated files to include 'minimal'
cd themes
mv rose-pine.json rose-pine-minimal.json
mv rose-pine-moon.json rose-pine-moon-minimal.json
mv rose-pine-dawn.json rose-pine-dawn-minimal.json

echo "✓ Themes built and renamed successfully"
