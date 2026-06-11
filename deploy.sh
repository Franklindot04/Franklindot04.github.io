#!/usr/bin/env bash

set -euo pipefail

REPO_NAME="franklindot04.github.io"
BRANCH="main"

echo "🚀 Starting deployment checks for ${REPO_NAME}..."

if ! command -v git >/dev/null 2>&1; then
  echo "❌ Git is not installed or not available in PATH."
  exit 1
fi

if [ ! -f "index.html" ]; then
  echo "❌ index.html not found. Make sure you run this script from the repository root."
  exit 1
fi

echo "✅ index.html found."

if [ -f "main.py" ]; then
  echo "🐍 Checking Python file syntax..."
  python3 -m py_compile main.py
  echo "✅ main.py syntax check passed."
fi

if [ -f "App.java" ]; then
  echo "☕ Java file found."
  if command -v javac >/dev/null 2>&1; then
    echo "☕ Checking Java compilation..."
    javac App.java
    rm -f App.class
    echo "✅ App.java compilation check passed."
  else
    echo "⚠️ javac not found. Skipping Java compilation check."
  fi
fi

echo "🔍 Checking Git status..."
git status --short

echo ""
echo "⚠️ Pre-push identity check:"
git config user.name || true
git config user.email || true

echo ""
echo "Expected commit identity:"
echo "franklindot04 <a2andwinning@gmail.com>"
echo ""

read -r -p "Continue with commit and push? [y/N]: " confirm

if [[ "${confirm}" != "y" && "${confirm}" != "Y" ]]; then
  echo "Deployment cancelled."
  exit 0
fi

git add index.html deploy.sh main.py App.java CONTRIBUTING.md CODE_OF_CONDUCT.md LICENSE NOTICE 2>/dev/null || true

if git diff --cached --quiet; then
  echo "No changes staged. Nothing to commit."
else
  git commit -m "Add personal portfolio website"
fi

echo "📤 Pushing to ${BRANCH}..."
git push origin "${BRANCH}"

echo ""
echo "✅ Deployment pushed."
echo "🌐 Your site should be available at:"
echo "https://franklindot04.github.io"