#!/bin/bash
# Generates SKILL.md from SKILL.md.tmpl
# No external dependencies required.
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cp "$SCRIPT_DIR/SKILL.md.tmpl" "$SCRIPT_DIR/SKILL.md"
echo "✅ Generated SKILL.md from SKILL.md.tmpl"
