rmdir /s /q out-mac
mkdir out-mac
java -jar jar\packr-all-4.0.0.jar --platform mac --jdk jdk\OpenJDK17U-jre_x64_mac_hotspot_17.0.1_12.tar.gz --useZgcIfSupportedOs --executable UniversalMigrationTool --classpath out\*.jar --mainclass com.example.Application --vmargs Xmx1G --resources src/main/resources --output out-mac  --icon logo_256x256.icns --verbose
copy /y NUL out-mac\.gitkeep >NUL