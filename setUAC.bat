@echo off

REM 관리자 권한을 확인합니다.
:CheckPermissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM 오류가 발생하면 권한이 없으니 권환을 취득하기 위해 GetPermissions으로 이동
REM 오류가 발생하지 않으면 권한이 있으니 PermissionDone으로 이동
if '%errorlevel%' NEQ '0' (
    goto GetPermissions
) else ( goto PermissionDone )

:GetPermissions
echo 
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\uac_get_admin.vbs"
set params = %*:"=""
echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\uac_get_admin.vbs"
"%temp%\uac_get_admin.vbs"
del "%temp%\uac_get_admin.vbs"
exit /b

:PermissionDone
echo 관리자 권한을 취득하였습니다.

REM ==============================================================================================
REM =================================관리자 권한 취득 완료 ========================================
REM ==============================================================================================

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t "REG_DWORD" /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t "REG_DWORD" /d "0" /f

pause
