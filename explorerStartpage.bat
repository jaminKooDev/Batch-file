reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t "REG_SZ" /d "https://www.naver.com/" /f

del .\explorerStartpage.bat
