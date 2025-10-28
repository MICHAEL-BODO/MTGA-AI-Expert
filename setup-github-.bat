@echo off
echo ==========================================
echo MTGA AI Expert - GitHub Setup
echo ==========================================
echo.

set /p username="Enter your GitHub username: "
set /p reponame="Enter repository name (default: mtga-ai-expert): "
if "%reponame%"=="" set reponame=mtga-ai-expert

echo.
echo Configuring Git...
git config --global user.name "%username%"
git config --global user.email "%username%@users.noreply.github.com"

echo.
echo Initializing repository...
git init
git branch -M main

echo.
echo Creating .gitignore...
(
echo # Python
echo __pycache__/
echo *.py[cod]
echo venv/
echo.
echo # Node
echo node_modules/
echo dist/
echo.
echo # Secrets
echo .env
) > .gitignore

echo.
echo Adding files...
git add .
git commit -m "Initial commit: MTGA AI Expert project"

echo.
echo Adding remote...
git remote add origin https://github.com/%username%/%reponame%.git

echo.
echo ==========================================
echo Setup complete!
echo ==========================================
echo.
echo IMPORTANT: You need to create the repository on GitHub first!
echo 1. Go to: https://github.com/new
echo 2. Repository name: %reponame%
echo 3. DO NOT initialize with README
echo 4. Click "Create repository"
echo.
echo After creating, run: git push -u origin main
echo.
pause