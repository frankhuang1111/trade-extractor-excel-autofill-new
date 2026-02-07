@echo off
setlocal
powershell.exe -ExecutionPolicy Bypass -File "%~dp0install_codex_gpt53.ps1"
if errorlevel 1 (
  echo.
  echo 配置失败，请截图报错信息给我。
  pause
  exit /b 1
)
echo.
echo 配置完成，请重启 VS Code/Codex。
pause
