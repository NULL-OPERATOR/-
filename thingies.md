

## OSX --------------
find . -name ".DS_Store" -delete

defaults write NSGlobalDomain KeyRepeat -int 0
defaults write -g InitialKeyRepeat -int 10

defaults write com.apple.desktopservices DSDontWriteNetworkStores true


## hide volume logo

launchctl unload -wF /System/Library/LaunchAgents/com.apple.BezelUI.plist

To undo, change YES to NO, or:

http://apple.stackexchange.com/questions/16849/how-do-i-disable-the-volume-control-overlay

## view hidden files

defaults write com.apple.finder AppleShowAllFiles YES

## script

change all permission to run 

chmod u+x *

add to the top:
 #!/bin/bash

then:
chmod u+x scrip.sh


## JONGO -----------

pip install -r requirements/common.txt


## celery

celery -A proj inspect active

start worker
celery -A ws worker -l info


start beat
celery -A ws beat -l info

start redis
redis-server

clear queue
celery -A ws purge -f


alias ws3='cd ~/Development/git/ws/ && source ../../envs/ws/bin/activate'
alias ws4='cd ~/Development/git/natooraws-app && source ../../envs/ws/bin/activate'
alias wss='z ws && echo "OOOHH SERRRRVER" && source ../../envs/ws/bin/activate && ./manage.py runserver 0.0.0.0:8000'
alias worker='z ws && echo "WORKER" && source ../../envs/ws/bin/activate && celery -A ws worker -l info'
alias shell='./manage.py shell'
alias server='./manage.py runserver 0.0.0.0:8000'
