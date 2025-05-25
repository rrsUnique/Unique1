@echo off
cd /d "C:\Users\63351\OneDrive\Desktop\RRSUnique\Unique"

echo GitHub에 변경된 파일을 업로드 중...

:: 변경사항 스테이징
git add .

:: 자동 커밋 메시지에 현재 시간 포함
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-dd_HH:mm:ss"') do set timestamp=%%i
git commit -m "자동 업로드: %timestamp%"

:: 원격 저장소로 푸시
git push origin main

echo.
echo === 업로드 완료 ===
pause
