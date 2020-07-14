@echo off

set PAGE="https://www.naver.com/"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t "REG_SZ" /d PAGE /f

echo IE의 시작페이지를 %PAGE%로 설정하였습니다.
pause
