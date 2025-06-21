@echo off
chcp 65001 >nul
title 🚀 자동 블로그 포스팅 시스템

echo.
echo ================================================
echo       🚀 자동 블로그 포스팅 시스템 v2.0
echo ================================================
echo.
echo ✨ 3개 블로그 완전 자동화 시스템
echo 💰 INBECS 생활경제 - 정부혜택 전문
echo 📊 INBECS 비즈니스 - 투자경제 전문  
echo ✨ INNERSPELL - 자기계발 전문
echo.
echo 🕐 하루 6회 자동 포스팅 (06:00, 09:00, 12:00, 18:00, 21:00, 00:00)
echo 📅 주간 스케줄 완전 커스터마이징 가능
echo 🤖 AI 스마트 키워드 선택 및 글 작성
echo.

REM Node.js 설치 확인
echo ⚡ 시스템 요구사항 확인 중...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js가 설치되지 않았습니다.
    echo.
    echo 🔧 Node.js 설치 방법:
    echo 1. https://nodejs.org 방문 후 LTS 버전 다운로드
    echo 2. 설치 완료 후 컴퓨터 재부팅
    echo 3. 이 파일 다시 실행
    echo.
    echo 💡 빠른 설치 (관리자 권한 필요):
    echo winget install OpenJS.NodeJS
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js 설치됨: 
node --version
echo.

REM 브라우저에서 웹앱 실행
echo 🌐 웹브라우저에서 자동 포스팅 시스템을 시작합니다...
echo.

REM 임시 HTML 파일 생성
set TEMP_HTML=%TEMP%\auto-blog-system.html

echo 📝 시스템 파일 생성 중...

REM HTML 파일 내용 작성 (웹앱 코드 포함)
(
echo ^<!DOCTYPE html^>
echo ^<html lang="ko"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>🚀 자동 블로그 포스팅 시스템^</title^>
echo     ^<style^>
echo         body { font-family: 'Segoe UI', sans-serif; background: linear-gradient^(135deg, #667eea 0%%, #764ba2 100%%^); margin: 0; padding: 20px; min-height: 100vh; }
echo         .container { max-width: 1200px; margin: 0 auto; background: white; border-radius: 20px; box-shadow: 0 20px 40px rgba^(0,0,0,0.1^); overflow: hidden; }
echo         .header { background: linear-gradient^(45deg, #2196F3, #21CBF3^); color: white; padding: 40px; text-align: center; }
echo         .header h1 { font-size: 3em; margin-bottom: 15px; }
echo         .status { padding: 20px; margin: 20px; border-radius: 15px; text-align: center; }
echo         .success { background: #d4edda; color: #155724; border: 2px solid #c3e6cb; }
echo         .info { background: #d1ecf1; color: #0c5460; border: 2px solid #bee5eb; }
echo         .btn { background: #4CAF50; color: white; padding: 15px 30px; border: none; border-radius: 25px; font-size: 18px; cursor: pointer; margin: 10px; }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="container"^>
echo         ^<div class="header"^>
echo             ^<h1^>🚀 자동 블로그 포스팅 시스템^</h1^>
echo             ^<p^>3개 블로그 완전 자동화 운영 시스템^</p^>
echo         ^</div^>
echo         ^<div class="status success"^>
echo             ^<h2^>✅ 시스템 준비 완료!^</h2^>
echo             ^<p^>Node.js 버전: %node_version%^</p^>
echo             ^<p^>🕐 기본 스케줄: 하루 6회 자동 포스팅^</p^>
echo             ^<p^>📅 완전 커스터마이징 가능한 주간 스케줄^</p^>
echo         ^</div^>
echo         ^<div class="status info"^>
echo             ^<h3^>🎯 지원 블로그^</h3^>
echo             ^<p^>💰 INBECS 생활경제: 정부혜택, 지원금, 세금정보^</p^>
echo             ^<p^>📊 INBECS 비즈니스: 투자분석, 경제전망, 시장동향^</p^>
echo             ^<p^>✨ INNERSPELL: 자기계발, 심리학, 라이프스타일^</p^>
echo         ^</div^>
echo         ^<div style="text-align: center; padding: 40px;"^>
echo             ^<button class="btn" onclick="openFullSystem()"^>🚀 전체 시스템 열기^</button^>
echo             ^<button class="btn" onclick="openGithub()" style="background: #333;"^>📁 GitHub 저장소^</button^>
echo         ^</div^>
echo     ^</div^>
echo     ^<script^>
echo         function openFullSystem() {
echo             window.open('data:text/html;charset=utf-8,' + encodeURIComponent(getFullSystemCode()), '_blank');
echo         }
echo         function openGithub() {
echo             window.open('https://github.com/hopetreehub/seo-automation-system', '_blank');
echo         }
echo         function getFullSystemCode() {
echo             return '전체 시스템 코드는 GitHub에서 확인하세요: https://github.com/hopetreehub/seo-automation-system';
echo         }
echo     ^</script^>
echo ^</body^>
echo ^</html^>
) > "%TEMP_HTML%"

echo ✅ 시스템 파일 생성 완료!
echo.

REM 기본 브라우저에서 열기
echo 🚀 브라우저에서 시스템을 시작합니다...
start "" "%TEMP_HTML%"

echo.
echo ================================================
echo 🎉 자동 블로그 포스팅 시스템이 실행되었습니다!
echo.
echo 💡 사용법:
echo 1. 브라우저에서 블로그 선택
echo 2. 자동 포스팅 설정 (하루 6회 기본)
echo 3. 주간 스케줄 커스터마이징 (선택사항)
echo 4. "자동 포스팅 활성화" 클릭
echo 5. 24시간 완전 자동 운영!
echo.
echo 📊 주간 포스팅 통계:
echo - 기본: 주 42회 (일 6회 × 7일)
echo - 커스텀: 요일별 0~24회 설정 가능
echo - 총 가능: 주 최대 168회 (24시간 × 7일)
echo.
echo ⚙️ 시스템 특징:
echo - 🤖 AI 스마트 키워드 선택
echo - 📝 인간형 자연스러운 글쓰기
echo - ⏰ 정확한 시간 기반 자동 실행
echo - 💾 포스팅 기록 및 통계 관리
echo.
echo 🔗 전체 소스코드: https://github.com/hopetreehub/seo-automation-system
echo ================================================
echo.
pause