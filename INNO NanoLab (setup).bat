@echo off
chcp 65001 >nul
cd /d "%~dp0"
set PORT=8765
set "OPEN="
if exist "%~dp0INNO NanoLab (setup).html" set "OPEN=INNO%%20NanoLab%%20(setup).html"
where python >nul 2>nul && goto haspy
where py >nul 2>nul && goto haspy2
echo [INNO NanoLab] Python이 필요합니다. python.org 에서 설치 후 다시 실행하세요.
echo  - Google 로그인 팝업은 localhost 또는 https 환경에서만 동작하기 때문입니다.
pause
goto :eof
:haspy
start "" "http://localhost:%PORT%/%OPEN%"
echo 브라우저에 선택 메뉴가 열립니다. 원하는 INNO NanoLab 파일을 클릭하세요.
echo 사용하는 동안 이 검은 창을 닫지 마세요. 다 쓰면 창을 닫으면 됩니다.
python -m http.server %PORT%
goto :eof
:haspy2
start "" "http://localhost:%PORT%/%OPEN%"
echo 브라우저에 선택 메뉴가 열립니다. 원하는 INNO NanoLab 파일을 클릭하세요.
echo 사용하는 동안 이 검은 창을 닫지 마세요. 다 쓰면 창을 닫으면 됩니다.
py -m http.server %PORT%
goto :eof