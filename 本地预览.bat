@echo off
cd /d %~dp0
start cmd /k "mkdocs serve"
start http://127.0.0.1:8000/
