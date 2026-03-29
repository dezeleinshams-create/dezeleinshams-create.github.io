@echo off
chcp 65001 >nul
cd /d "e:\new\تطبيقات جاهزة للنشر\dezel labs saite\Dezel-Labs-Website"

echo ========================================
echo    Dezel Labs - GitHub Push Script
echo ========================================
echo.

echo [1/4] Removing stuck lock files...
if exist ".git\index.lock" (
    del /f ".git\index.lock"
    echo     Lock file removed!
) else (
    echo     No lock file found. OK!
)
echo.

echo [2/4] Adding all changes...
git add -A
echo     Done!
echo.

echo [3/4] Committing changes...
git commit -m "feat: Modern Redesign - Dark Neon Glassmorphism Theme"
echo     Done!
echo.

echo [4/4] Pushing to GitHub...
git push
echo.

echo ========================================
echo    DONE! Changes pushed to GitHub!
echo ========================================
echo.
pause
