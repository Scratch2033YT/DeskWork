@echo off 
powershell -command Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
powershell -command "& { . '%cd%\rmanager.ps1' '%cd%\id.txt' }"
powershell -command Set-ExecutionPolicy Restricted -Scope CurrentUser
echo Check the current directory for id.txt: %cd%
pause