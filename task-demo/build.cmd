cls
@echo off
CLS
color 0a
cd/D %~dp0

REM 本工程为单工程构建模式
REM =========定义开始=========
for %%i in ("%cd%") do set pname=%%~ni
set title=工程编译/发布
set c1=eclipse
set c2=release
REM =========定义结束=========

Title %pname%%title%

goto choose
:choose
echo %title%
echo ========================
echo   1：工程编译
echo   2：工程发布
echo   e：退   出
echo ========================
set /p choice= 请选择相应选项，然后按回车，或者直接按回车进行编译:
echo.
if /i "%choice%"=="" goto eclipse
if /i "%choice%"=="1" goto eclipse
if /i "%choice%"=="2" goto release
if /i "%choice%"=="e" goto EX

echo.
echo              选择无效，请重新输入
echo.
echo.
goto choose

:EX
exit

:eclipse
echo 开始编译%pname%...
call gradle/gradlew.bat cleanfiles copyfiles compileJava eclipse clean
goto choose

:release
echo 开始发布%pname%...
call gradle/gradlew.bat clean copyfiles build -x test release
goto choose