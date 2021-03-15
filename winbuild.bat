rmdir /s /q out-win
mkdir out-win
java -jar jar\packr-all-4.0.0.jar --platform windows64 --jdk jdk\OpenJDK17U-jre_x64_windows_hotspot_17.0.1_12.zip --useZgcIfSupportedOs --executable UniversalMigrationTool --classpath out\*.jar --mainclass com.example.Application --vmargs Xmx1G --resources src/main/resources --output out-win  --icon logo_256x256.icns --verbose
copy /y NUL out-win\.gitkeep >NUL