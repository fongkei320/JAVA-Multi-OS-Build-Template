@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
rmdir /s /q out-lin
mkdir out-lin
java -jar jar\packr-all-4.0.0.jar --platform linux64 --jdk jdk\OpenJDK17U-jre_x64_linux_hotspot_17.0.1_12.tar.gz --useZgcIfSupportedOs --executable UniversalMigrationTool --classpath out\*.jar --mainclass com.example.Application --vmargs Xmx1G --resources src/main/resources --output out-lin --icon logo_256x256.icns --verbose
copy /y NUL out-lin\.gitkeep >NUL