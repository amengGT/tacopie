@echo off & setlocal enabledelayedexpansion


echo ��ʼ���������ʱ�ļ��ļ�

	for /f "delims=" %%p in ('dir /ad /s /b "*debug*" "*release*" "*x64*" "*win32*" "ipch"') do (
		
		echo "%%p"|findstr "����" >nul
		if !errorlevel!==1 (
			echo ɾ��"%%p"
			rd /s /q "%%p"
		)
	)
	
	rd /s /q x64
	rd /s /q win32
	
	del /f /s /a:h /q .\*.suo
	del /f /s /q .\*.suo
	del /f /s /q .\*.aps
	del /f /s /a:h /q .\*.ncb
	del /f /s /q .\*.ncb
	del /f /s /a:h /q .\*.sdf
	del /f /s /q .\*.sdf
	del /f /s /a:h /q .\*.VC.db
	del /f /s /q .\*.VC.db
	
	rd /s /q ipch
	rd /s /q .vs
	
echo ����ļ���ɣ�  
	 

echo. & pause