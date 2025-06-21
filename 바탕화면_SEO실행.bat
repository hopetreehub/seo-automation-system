@echo off
chcp 65001 >nul
cd /d "%~dp0"
title 🚀 SEO 자동화 시스템

echo.
echo ================================================
echo           🚀 SEO 자동화 시스템 
echo ================================================
echo.
echo ✅ Node.js 확인 중...

REM Node.js 설치 확인
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js가 설치되지 않았습니다.
    echo.
    echo 🔧 Node.js 설치가 필요합니다:
    echo 1. https://nodejs.org 방문
    echo 2. LTS 버전 다운로드 및 설치
    echo 3. 컴퓨터 재부팅 후 다시 실행
    echo.
    echo 💡 또는 관리자 권한으로 실행:
    echo winget install OpenJS.NodeJS
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js 설치됨
node --version
echo.
echo ⚡ SEO 자동화 시스템 시작 중...
echo.

REM seo-windows.js 파일 실행
if exist "seo-windows.js" (
    node seo-windows.js
) else (
    echo ❌ seo-windows.js 파일을 찾을 수 없습니다.
    echo.
    echo 📁 현재 위치: %CD%
    echo.
    echo 💡 해결 방법:
    echo 1. GitHub에서 파일 다운로드
    echo 2. git clone https://github.com/hopetreehub/seo-automation-system.git
    echo 3. 다운로드한 폴더에서 이 파일 실행
    echo.
)

echo.
echo ================================================
echo           🎉 프로그램 종료            
echo ================================================
echo.
pause