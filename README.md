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

## [Visual Studio Code](https://code.visualstudio.com/)
Lightweight Code Editor, focused for web development.

![Visual Studio Code screenshoot](Code-image.jpg)

### Theme
My favorite [Monokai Pro (Filter Octagon)](https://monokai.pro/vscode) in my opinion best theme out there !

### Config

```json
{
//Editor
"editor.fontFamily": "'Fira Code'",
"editor.fontSize": 16,
"editor.fontLigatures": true,
"editor.cursorBlinking": "expand",
"editor.cursorWidth": 3,
"editor.cursorSmoothCaretAnimation": true,
"editor.renderIndentGuides": false,
"editor.renderWhitespace": "boundary",
"editor.tabSize": 2,
"editor.snippetSuggestions": "inline",
"editor.suggest.localityBonus": true,
"editor.tabCompletion": "on",
"editor.formatOnPaste": true,
"editor.formatOnSave": true,

//Workbench
"workbench.colorCustomizations": {
"editorCursor.foreground": "#fe5d41",
"terminalCursor.foreground": "#fe5d41"
},
"workbench.statusBar.visible": true,
"workbench.activityBar.visible": false,
"workbench.sideBar.location": "right",

// Optional BUT IMPORTANT: If you have the prettier extension enabled for other languages like CSS and HTML, turn it off
"prettier.disableLanguages": ["javascript", "javascriptreact", "markdown"],
"editor.codeActionsOnSave": {
"source.fixAll.eslint": true
},

//Terminal settings
"terminal.integrated.cursorBlinking": true,
"terminal.integrated.enableBell": true,
"terminal.integrated.fontSize": 15,
"terminal.integrated.fontFamily": "'Fira Code'",

//Live server
"liveServer.settings.port": 5555,
"liveServer.settings.CustomBrowser": "firefox",
"liveServer.settings.donotShowInfoMsg": true,
"liveServer.settings.fullReload": true,
"tabnine.experimentalAutoImports": true,

//Other
"explorer.confirmDragAndDrop": false,
"window.menuBarVisibility": "toggle",
"files.trimTrailingWhitespace": true,
"files.eol": "\n",
"[javascript]": {
"editor.formatOnSave": false
},
"[javascriptreact]": {
"editor.formatOnSave": false
},
}
```

### Extensions

| Extension                                                                                                                  	| Descripton                                     	|
|----------------------------------------------------------------------------------------------------------------------------	|------------------------------------------------	|
| [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)                          	| Improved comments                              	|
| [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)         	| Colorize matching brackets                     	|
| [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)                    	| Debug JavaScript code in the Chrome            	|
| [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)                                       	| Integrates ESLint into VS Code                 	|
| [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)                          	| Supercharge the Git capabilities               	|
| [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)                               	| Makes indentation easier to read               	|
| [JavaScript Snippet Pack](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-javascript-snippet-pack)       	| A snippet pack                                 	|
| [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)                                   	| Local Server with live reload                  	|
| [Polacode](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)                                  	| Polaroid for your code                         	|
| [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=pnp.polacode)                              	| Code formatter using prettier                  	|
| [Quokka.js](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)                                    	| Live Scratchpad for JavaScript                 	|
| [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)                             	| A rainbow brackets                             	|
| [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)                                  	| Open any folder in the WSL                     	|
| [Settings Sync](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)                                 	| Synchronize Settings                           	|
| [Import Cost](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)                                 	| Display import package size in the editor      	|
| [Jest](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)                                         	| Use Facebook's Jest With Pleasure              	|
| [jumpy](https://marketplace.visualstudio.com/items?itemName=Orta.vscode-jest)                                              	| Fast cursor movement                           	|
| [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=wmaurer.vscode-jumpy)                      	| Markdown Preview                               	|
| [Quick and Simple Text Selection](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced) 	| Jump to select between quote, brackets, etc.   	|
| [TabNine](https://marketplace.visualstudio.com/items?itemName=dbankier.vscode-quick-select)                                	| Machine learning to help you write code faster 	|


