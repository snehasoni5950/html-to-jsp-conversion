@echo off
title HTML to JSP Servlet Launcher

set "PROJECT=C:\Users\USER\.gemini\antigravity\scratch\servlet"
set "CATALINA_HOME=C:\Users\USER\Downloads\apache-tomcat-11.0.25-windows-x64\apache-tomcat-11.0.25"

echo ========================================================
echo   Starting Tomcat for HTML to JSP Servlet Experiment
echo ========================================================
echo.

if not exist "%CATALINA_HOME%\bin\startup.bat" (
    echo ERROR: Tomcat folder not found at %CATALINA_HOME%
    pause
    exit /b 1
)

echo Updating deployment war...
copy /Y "%PROJECT%\target\servlet.war" "%CATALINA_HOME%\webapps\servlet.war" >nul

if not exist "%CATALINA_HOME%\logs" mkdir "%CATALINA_HOME%\logs"

call "%CATALINA_HOME%\bin\startup.bat"

echo Waiting for Tomcat to initialize...
timeout /t 3 /nobreak >nul
start "" "http://localhost:8080/servlet/student.jsp"

echo.
echo Application opened in browser: http://localhost:8080/servlet/student.jsp
echo.
pause
