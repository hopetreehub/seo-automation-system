@echo off
chcp 65001 >nul
title SEO 자동화 시스템

echo.
echo 🚀 SEO 자동화 시스템 (Windows 네이티브)
echo ================================================
echo.

REM Node.js 설치 확인
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js가 설치되지 않았습니다.
    echo.
    echo 🔧 Node.js 설치 방법:
    echo 1. https://nodejs.org 방문
    echo 2. LTS 버전 다운로드 및 설치
    echo 3. 컴퓨터 재부팅 후 다시 실행
    echo.
    echo 💡 또는 Chocolatey로 설치:
    echo choco install nodejs
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js 버전: 
node --version

echo ⚡ SEO 자동화 시스템 시작 중...
echo.

REM 현재 디렉토리에서 Node.js 스크립트 실행
node "%~dp0seo-windows.js"

if %errorlevel% neq 0 (
    echo.
    echo ❌ 실행 오류 발생
    echo.
    echo 🔧 수동 실행 방법:
    echo cd /d "%~dp0"
    echo node seo-windows.js
)

echo.
echo ================================================
echo 🎉 SEO 자동화 시스템 종료
echo.
pause