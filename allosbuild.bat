echo build Windows64
call .\winbuild.bat
echo Windows64 Done
echo build MacOS
call .\macbuild.bat
echo Mac Done
echo build Linux
call .\linbuild.bat
echo All Done
