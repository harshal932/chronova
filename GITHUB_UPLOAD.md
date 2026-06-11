# 💎 Chronova Git & GitHub Upload Guide

This guide provides step-by-step instructions to initialize your Git repository, secure environment credentials, and publish the Chronova codebase to GitHub.

---

## 🔒 Important: Security Notice

> [!WARNING]
> Never commit your active API keys, JWT secrets, database connection links, or payment passwords to a public GitHub repository. 
> 
> A root-level `.gitignore` has been created to prevent files like `.env`, `node_modules/`, and build artifacts from being tracked and pushed.

---

## 🚀 Step-by-Step GitHub Upload

### Step 1: Create a New GitHub Repository
1. Log into your GitHub account and navigate to [github.com/new](https://github.com/new).
2. Set the repository name (e.g., `chronova-luxury-watches`).
3. Set your visibility settings (Public or Private).
4. **Crucial**: Do **NOT** check "Add a README file", "Add .gitignore", or "Choose a license". The codebase already contains these files, and adding them on GitHub will cause merge conflict warnings.
5. Click **Create repository**.

---

### Step 2: Initialize Git and Commit Files Locally
You can automate this step by running the provided helper script in the root directory:
* On Windows: Double-click or run `github_upload.bat` in command prompt.
* On macOS/Linux: Run `chmod +x github_upload.sh && ./github_upload.sh` in the terminal.

#### Alternatively, you can run the commands manually:
```bash
# Initialize local Git repository
git init

# Set default branch name to main
git branch -M main

# Stage all project files (except ignored node_modules & env secrets)
git add .gitignore README.md docker-compose.yml backend/ frontend/ .github/

# Create initial commit
git commit -m "feat: initial commit - Chronova luxury watch e-commerce"
```

---

### Step 3: Link Local Repo to GitHub & Push
Copy the repository URL from your GitHub setup screen and run the following commands:
```bash
# Link the local repository to your remote GitHub repo
git remote add origin YOUR_REPOSITORY_URL_HERE

# Push the codebase to GitHub
git push -u origin main
```

---

## 📝 Ongoing Updates
Whenever you make changes to the code and want to push the updates to GitHub, run:
```bash
# Stage changes
git add .

# Commit changes
git commit -m "Describe your code changes here"

# Push updates
git push
```
