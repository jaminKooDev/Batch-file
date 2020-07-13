# Batch File 작성 기법

### IE(Internet Explorer) 시작페이지 변경

```bash
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t "REG_SZ" /d "PAGE" /f
```

- PAGE 부분에 변경하고자 하는 웹주소를 넣어 사용

