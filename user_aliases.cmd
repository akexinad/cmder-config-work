;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls -a --show-control-chars -F --color $*
cl=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

mycode=cd C:\Users\cecd304\code
olive=cd C:\Users\cecd304\code\olive
workshop=cd C:\Users\cecd304\code\workshop
playground=cd C:\Users\cecd304\code\playground
udemy=cd C:\Users\cecd304\code\udemy
openbash=code "C:\Users\cecd304\cmder\config"
c=C:
open=start $*
lslah=ls -lah
rmr=rm -rf $1

gs=git status
ga=git add .
gcm=git commit -m $1
gcl=git clone
gp=git push
gpom=git push origin master
gpl=git pull
gplr=git pull --rebase
gplom=git pull origin master
gagcm=git add . && git commit -m $1
gb=git branch
gbd=git branch -D $1
gcb=git checkout branch $1

nrs=npm run start
nrd=npm run dev
nrb=npm run build
crapp=create-react-app

REM this command does not work now as there is no more templates file in my workshop
jsinit=cp D:\code\workshop\templates\package.json ./ && cp D:\code\workshop\templates\index.html ./ && touch main.js && npm i lite-server && code . && npm rum start

packmy=mkdir $1 "$1"/js "$1"/css && touch "$1"/index.html "$1"/js/main.js "$1"/css/master.css && cd "$1" && git init

rename=echo "get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("orginalTextHere", "newTextHere") }"

atlassian=echo Il85xSiBSFQl
oracle=echo tbd