@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~s0"" ::","","runas",1)(window.close)&&exit
echo "-------------------------------------------"
echo "��ѡ����Ҫִ�еĲ�����"
echo "1. ��װ������rclone����"
echo "2. ֹͣ��ж��rclone����"
echo "-------------------------------------------"
echo.
echo.
set /p num=��ѡ��Ҫִ�еĲ���:
if "%num%"=="1" (
	echo "-------------------------------------------"
	echo "��װ��..."
	echo "-------------------------------------------"
	.\WinSW.exe install .\rclone-od1.xml
    .\WinSW.exe install .\rclone-od2.xml
    .\WinSW.exe install .\rclone-gd.xml
    .\WinSW.exe start .\rclone-od1.xml
    .\WinSW.exe start .\rclone-od2.xml
    .\WinSW.exe start .\rclone-gd.xml
	echo.
	echo.
	echo "��װ�ɹ��������в鿴log����Ƿ���ȷ"
	echo.
	timeout /t 2
)	else if "%num%"=="2" (
		echo "-------------------------------------------"
		echo "ж����..."
		echo "-------------------------------------------"
		.\WinSW.exe stop .\rclone-od1.xml
        .\WinSW.exe stop .\rclone-od2.xml
        .\WinSW.exe stop .\rclone-gd.xml
        .\WinSW.exe uninstall .\rclone-od1.xml
        .\WinSW.exe uninstall .\rclone-od2.xml
        .\WinSW.exe uninstall .\rclone-gd.xml
		echo.
		echo.
		echo "ж�سɹ��������в鿴log����Ƿ���ȷ"
		echo.
		timeout /t 2
)
