labAssist
=========

labAssist

to compile with gradle
----------------------

- ANDROID_NDK_HOME needs to be set
- ndk-build needs to be on PATH
- bypass subrepository needs to be initialized
On Windows:
- as per bypass instructions, BYPASS_INCLUDE_PATH needs to Boost directory
- gradle will automatically compile bypass using the ndk if neccessary
On Other:
- gradle will assume bypass natives were compiled using ndk ahead of time,since the current Makefile does not work on Linux