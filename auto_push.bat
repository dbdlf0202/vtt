@echo off
:: VTT 자막 폴더로 이동
cd /d "C:\Users\CJPC\Desktop\VTT 자막 아카이브"

:: Git 변경 사항 추가
git add .

:: 커밋 (자동 메시지: 날짜와 시간)
git commit -m "Auto update %date% %time%"

:: GitHub로 push
git push

:: 완료 메시지
echo Auto push completed!
pause