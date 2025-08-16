#!/usr/bin/env bash
set -e

# Check if stylua is installed
if ! command -v stylua &> /dev/null; then
  echo "Stylua not found. Installing with cargo..."
  if command -v cargo &> /dev/null; then
    cargo install stylua
  else
    echo "Error: cargo is not installed. Please install Rust first."
    exit 1
  fi
else
  echo "Stylua is already installed."
fi

# Run stylua recursively
echo "Running stylua recursively on current directory..."
stylua -v .
