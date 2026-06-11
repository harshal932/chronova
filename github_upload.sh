#!/bin/bash

echo "==================================================="
echo "  CHRONOVA - GITHUB UPLOAD HELPER"
echo "==================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "[ERROR] Git is not installed. Please install git and try again."
    exit 1
fi

# Initialize Git repository if not already done
if [ ! -d ".git" ]; then
    echo "[INFO] Initializing Git repository..."
    git init
    git branch -M main
else
    echo "[INFO] Git repository already initialized."
fi

# Ensure files are staged
echo "[INFO] Staging files..."
git add .gitignore
git add README.md
git add docker-compose.yml
git add backend/
git add frontend/
git add .github/

# Commit files
echo ""
echo "[INFO] Project files staged. Creating initial commit..."
git commit -m "feat: initial commit - Chronova luxury watch e-commerce"

echo ""
echo "==================================================="
echo "  NEXT STEPS TO UPLOAD TO GITHUB"
echo "==================================================="
echo "1. Go to https://github.com/new and create a new repository"
echo "   (Do NOT initialize it with README, .gitignore or license)"
echo ""
echo "2. Run the following commands in this directory:"
echo "   git remote add origin YOUR_REPOSITORY_URL"
echo "   git push -u origin main"
echo "==================================================="
echo ""
