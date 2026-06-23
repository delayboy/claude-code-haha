@echo off
setlocal
set "SIDECAR=C:\Users\Benson\Desktop\Temp\cc-haha-main\desktop\src-tauri\binaries\claude-sidecar-x86_64-pc-windows-msvc.exe"
set "APP_ROOT=C:\Users\Benson\Desktop\Temp\cc-haha-main\desktop\src-tauri\binaries"
if not exist "%SIDECAR%" (
  echo claude-haha launcher could not find bundled sidecar: %SIDECAR% 1>&2
  exit /b 127
)
"%SIDECAR%" cli --app-root "%APP_ROOT%" %*
exit /b %ERRORLEVEL%