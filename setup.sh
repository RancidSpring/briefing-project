#!/usr/bin/env bash
# setup.sh - Create or reset project folder structure

set -e

# Define directories
DIRS=(
  "data"
  "data/raw"
  "data/interim"
  "data/processed"
  "reports"
  "reports/figures"
)

create_dirs() {
  echo "Creating folder structure..."
  for dir in "${DIRS[@]}"; do
    mkdir -p "$dir"
    touch "$dir/.gitkeep"
  done
  echo "Folder structure ready. Place raw data in data/raw/."
}

clean_dirs() {
  echo "Cleaning derived data and reports..."
  rm -rf data/interim/* data/processed/* reports/figures/* 2>/dev/null || true
  echo "Clean complete."
}

case "$1" in
  init)
    create_dirs
    ;;
  clean)
    clean_dirs
    ;;
  reset)
    clean_dirs
    create_dirs
    echo "Project structure reset."
    ;;
  *)
    echo "Usage: ./setup.sh {init|clean|reset}"
    exit 1
    ;;
esac
