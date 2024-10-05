@echo off
set oripath=%cd%
cd "%userprofile%"
rmdir desktop
mklink /J Desktop "%oripath%\Workspaces\%1" 