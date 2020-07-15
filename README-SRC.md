# Batch File 작성 기법

### IE(Internet Explorer) 시작페이지 변경

```bash
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t "REG_SZ" /d "PAGE" /f
```

- PAGE 부분에 변경하고자 하는 웹주소를 넣어 사용

### 사용자 계정 컨트롤(UAC) 설정
- 관리자 권한으로 실행하셔야 합니다.
```bash
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t "REG_DWORD" /d "0" /f
```
- 레지스트리 값 설명

|레지스트리 키|설명|
|---|---|
|ConsentPromptBehaviorAdmin|사용자 계정 컨트롤: 관리자 승인 모드에서 관리자에 대한 권한 상승 확인 방법|
|EnableLUA|사용자 계정 컨트롤: 관리자 승인 모드에서 모든 관리자 실행|
|EnableUIADesktopToggle|사용자 계정 컨트롤: UIAccess 응용 프로그램이 보안된 데스크톱을 사용하지 않고 권한 상승 메시지를 표시하도록 허용|
|PromptOnSecureDesktop|사용자 계정 컨트롤: 권한 상승 요청 시 보안된 데스크톱으로 전환|

[참고(네이버블로그)](http://blog.naver.com/PostView.nhn?blogId=mjnms&logNo=220466734443&proxyReferer=https:%2F%2Fwww.google.com%2F)
,
[참고(마이크로소프트 문서)](https://docs.microsoft.com/ko-kr/windows/security/identity-protection/user-account-control/user-account-control-group-policy-and-registry-key-settings#user-account-control-behavior-of-the-elevation-prompt-for-administrators-in-admin-approval-mode)

### 폴더옵션 설정

```bash
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t "REG_DWORD" /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t "REG_DWORD" /d "0" /f
```
- 즐겨찾기에서 최근에 사용한 폴더/파일 옵션 비활성화 : 0, 활성화 : 1
