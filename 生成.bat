@echo off
cd /d %~dp0
start cmd /k "mkdocs build"
