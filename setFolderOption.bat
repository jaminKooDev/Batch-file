@echo off

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t "REG_DWORD" /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t "REG_DWORD" /d "0" /f

echo �ֱ� ��� ����/������ ��Ȱ��ȭ �Ǿ����ϴ�.

pause