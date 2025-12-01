@echo off
:: 1. Git 저장소 경로로 이동
cd /d "C:\Users\CJPC\Desktop\VTT 자막 아카이브"

:: 2. Git 저장소인지 확인
if not exist ".git" (
    echo Error: Git repository not found!
    pause
    exit /b
)

:: 3. 변경 사항 추가
git add .

:: 4. 커밋 (자동 메시지: 날짜와 시간)
git commit -m "Auto update %date% %time%"

:: 5. GitHub로 push
git push

:: 완료 메시지
echo Auto push completed!
pause
