# Multi OS Build Template

Multi OS Build Template is a JAVA environment to build standalone executables with JRE in MAC, Windows and Linux on x64 platform 

## Description

Functions and Features
The following is the description for the application
1. Multiple OS execution environment supported
* Linux (Ubuntu 16.04 LTS or above)
* Windows (Windows 10 1604 or above)
* MacOS (Sierra or above)

## Getting Started

### Dependencies

* packr 4.0.0
* JRE 17.0.1_12

### Installing

* Git clone from the repo or download the archive
* Any modifications needed to be made to files/folders

### Development Environment
* Intellij IDEA 2021.3.1
* OPEN JDK 17.0.1
* maven
### Executing program

* The executable will locate at the following directory
1. out - the application Java JAR
2. out-win - the win x64 executable
3. out-lin - the Linux executable
4. out-mac - the Mac OS executable
* Remark: All executable are having its own JRE which is 17.0.1, or runs manually by the following command 
```
.\allosbuild.bat
```

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

 [@Ketih Fong](mailto:fongkei@gmail.com)


## Version History

* 0.0.1
    * Initial commit

## Acknowledgments

Inspiration, code snippets, etc.
* [packr](https://github.com/libgdx/packr)
