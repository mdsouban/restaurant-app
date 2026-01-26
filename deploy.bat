@echo off
echo Deploying backend...
cd restaurant-backend
git push origin main
echo.
echo Deploying frontend...
cd ..\restaurant-frontend
git push origin main
echo.
echo Deployment complete!
pause