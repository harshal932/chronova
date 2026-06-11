@echo off
echo ===================================================
echo   CHRONOVA - GITHUB UPLOAD HELPER
echo ===================================================
echo.

:: Check if git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in your PATH.
    echo Please install Git from https://git-scm.com/ and try again.
    pause
    exit /b
)

:: Initialize Git repository if not already done
if not exist .git (
    echo [INFO] Initializing Git repository...
    git init
    git branch -M main
) else (
    echo [INFO] Git repository already initialized.
)

:: Ensure root .gitignore is applied
echo [INFO] Staging files...
git add .gitignore
git add README.md
git add docker-compose.yml
git add backend/
git add frontend/
git add .github/

:: Check status of staged files (excluding env and node_modules)
echo.
echo [INFO] Project files staged. Creating initial commit...
git commit -m "feat: initial commit - Chronova luxury watch e-commerce"

echo.
echo ===================================================
echo   NEXT STEPS TO UPLOAD TO GITHUB
echo ===================================================
echo 1. Go to https://github.com/new and create a new repository
echo    (Do NOT initialize it with README, .gitignore or license)
echo.
echo 2. Run the following commands in this directory:
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git push -u origin main
echo ===================================================
echo.
pause
