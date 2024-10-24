@echo off
setlocal

chcp 65001 >nul

if "%~1"=="--help" (
    echo ⚡ Yixboost Games GitHub Gamepusher
	echo.
    echo Usage: 🛠️ yx [repository_name] [folder_path]
    echo Description: This script creates a GitHub repository and links it to a local folder. ✨
    exit /b
)

if "%~1"=="--version" (
    echo 😻 GitHub CLI version:
    gh --version
    echo.
    echo 😹 Git version:
    git --version
    exit /b
)

if "%~1"=="--rick" (
    curl ascii.live/rick
)

if "%~1"=="" (
    echo ❌ Error: 😺 No GitHub repository name provided.
    echo Usage: 🛠️ yx [repository_name] [folder_path]
	echo Date: 📆 %date%
    echo Time: 🕓 %time%
	echo Help: yx --help
	echo Version: yx --version

    exit /b
)

if "%~2"=="" (
    echo ❌ Error: 📂 No folder path provided.
    echo Usage: ⚡ yx [repository_name] [folder_path]
	echo Date: 📆 %date%
    echo Time: 🕓 %time%
    exit /b
)

set repo_name=%~1
set folder_path=%~2

gh repo create yixboost-games/%repo_name% --public --confirm

echo The repository "yixboost-games/%repo_name%" has been created! 😺

if not exist "%folder_path%\" (
    echo ❌ Error: The folder "%folder_path%" does not exist. Please ensure the folder exists and try again. 🗂️
    exit /b
)

cd "%folder_path%"

git remote add origin https://github.com/yixboost-games/%repo_name%.git

echo The local git repository has been created in "%folder_path%" and connected to "yixboost-games/%repo_name% 📂".

git init
git config --global --add safe.directory %folder_path%
git add -A
set commit_message="add files"
git commit -m %commit_message%
git branch -M main
git push origin main

echo The changes have been pushed to "yixboost-games/%repo_name% 🛠️".
endlocal
