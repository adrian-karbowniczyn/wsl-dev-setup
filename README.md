# WSL as a Development Environment 👨‍💻
**A set of configuration files for different editors, tools, terminals and similar stuff on Windows with installed WSL2.**
</br>

![Cover image](cover-image.gif)

## Table of content
* [Windows Subsystem for Linux](#windows-subsystem-for-linux)
* [My Configs](#my-configs)
* [Visual Studio Code](#visual-studio-code)
* [Vim](#vim)
* [ZSH with Oh My Zsh](#zsh)
* [Git](#git)
* [Google chrome](#google-chrome)
* [Windows Terminal (preview)](#windows-terminal)
* [Other Software](#other-software)
* [Reference](#reference)

## Windows Subsystem for Linux
**The Windows Subsystem for Linux** lets developers run most command-line tools, utilities, and applications directly on Windows.

### Install 🛠 the Windows Subsystem for Linux
1. Open PowerShell as Admin and run:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
2. Restart computer
3. Install [Ubuntu 18.04 LTS](https://www.microsoft.com/pl-pl/p/ubuntu-1804-lts/9n9tngvndl3q?rtc=1&activetab=pivot:overviewtab) or other Linux Distro

4. Enable Virtual Machine Platform
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
5. Setup WSL 2
```
wsl --set-version Ubuntu-18.04 2
```
>WSL 2 is only available in Windows 10, updated to version 2004, Build 19041 or higher.
6. Check what version of WSL your distro have
```
wsl -l -v
```
6. Any problems? checkout: https://docs.microsoft.com/en-us/windows/wsl/about

## My configs
A bash script for automated 🤖  installation of **[ZSH](#zsh)**, **[VIM](#vim)**, **[GIT](#git)**, **[WINDOWS TERMINAL](#windows-terminal)** configs.

1. Make sure you are in home directory and clone this repo
```
git clone https://github.com/adrian-karbowniczyn/wsl-config.git configs
```
2. Go into cloned folder
```
cd configs
```
3. Make script setup executable
```
chmod +x setup.sh
```
4. Run
```
./setup.sh
```
5. Follow instructions and enjoy 🔥
