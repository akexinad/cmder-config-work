;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
REM ls=ls -a --show-control-chars -F --color $*
ls=ls -1aF
cl=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $*
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

cc=code .

mycode=cd C:\Users\cecd304\code
eli=cd C:\Users\cecd304\code\eli
workshop=cd C:\Users\cecd304\code\workshop
playground=cd C:\Users\cecd304\code\playground
udemy=cd C:\Users\cecd304\code\udemy
openbash=code "C:\Users\cecd304\cmder\config"
c=C:
open=start $*
lslah=ls -lah
rmr=rm -rf $*

gs=git status
ga=git add .
gcm=git commit -m $*
gcl=git clone
gp=git push
gpom=git push origin master
gpl=git pull
gplr=git pull --rebase
gplom=git pull origin master
gagcm=git add . && git commit -m $*
gb=git branch
gbd=git branch -D $*
gchk=git checkout $*
gcbf=git checkout -B feature/$*
gcf=git checkout feature/$*
gcbf=git checkout -b feature/1-$*
gcd=git checkout develop

nrs=npm run start
nrd=npm run dev
nrb=npm run build
nrt=npm run test

npmis=npm i $* && npm start

crapp=npx create-react-app $* --template typescript $*
mkcom= mkdir .\src\components\$1 && touch .\src\components\$1\$1.tsx .\src\components\$1\$1.test.ts .\src\components\$1\$1.module.css

REM this command does not work now as there is no more templates folder file in my workshop
jsinit=cp D:\code\workshop\templates\package.json ./ && cp D:\code\workshop\templates\index.html ./ && touch main.js && npm i lite-server && code . && npm rum start

packmy=mkdir $* "$*"/js "$*"/css && touch "$*"/index.html "$*"/js/main.js "$*"/css/master.css && cd "$*" && git init

rename=echo "get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("orginalTextHere", "newTextHere") }"