@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c pushd ""%~dp0"" && ""%~s0"" ::","","runas",1)(window.close)&&exit
echo "-------------------------------------------"
echo "请选择你要执行的操作："
echo "1. 安装并启动rclone服务"
echo "2. 停止并卸载rclone服务"
echo "-------------------------------------------"
echo.
echo.
set /p num=请选择要执行的操作:
if "%num%"=="1" (
	echo "-------------------------------------------"
	echo "安装中..."
	echo "-------------------------------------------"
	.\WinSW.exe install .\rclone-od1.xml
    .\WinSW.exe install .\rclone-od2.xml
    .\WinSW.exe install .\rclone-gd.xml
    .\WinSW.exe start .\rclone-od1.xml
    .\WinSW.exe start .\rclone-od2.xml
    .\WinSW.exe start .\rclone-gd.xml
	echo.
	echo.
	echo "安装成功！请自行查看log输出是否正确"
	echo.
	timeout /t 2
)	else if "%num%"=="2" (
		echo "-------------------------------------------"
		echo "卸载中..."
		echo "-------------------------------------------"
		.\WinSW.exe stop .\rclone-od1.xml
        .\WinSW.exe stop .\rclone-od2.xml
        .\WinSW.exe stop .\rclone-gd.xml
        .\WinSW.exe uninstall .\rclone-od1.xml
        .\WinSW.exe uninstall .\rclone-od2.xml
        .\WinSW.exe uninstall .\rclone-gd.xml
		echo.
		echo.
		echo "卸载成功！请自行查看log输出是否正确"
		echo.
		timeout /t 2
)
