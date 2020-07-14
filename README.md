# Batch-file
Windows Batch File

## explorerStartpage.bat
- 실행 시 Internet Explorer의 시작페이지를 https://www.naver.com 으로 설정한다.
```
+ reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t "REG_SZ" /d "https://www.naver.com/" /f
```
- 변경이 필요할 경우 `https://www.naver.com` 을 원하는 주소로 변경하여 사용

## setUAC 
- 실행 시 관리자 계정 컨트롤 설정을 항상 알리지 않음(사용자 계정 컨트롤 끄기)로 설정한다
- 실행 시 자동으로 관리자 권환으로 실행한다.
