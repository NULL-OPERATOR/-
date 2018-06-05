# bloody exfat
diskutil list
diskutil unmountDisk force /dev/disk4
sudo fsck_exfat -d disk4s2

# OSX
find . -name ".DS_Store" -delete

defaults write NSGlobalDomain KeyRepeat -int 0
defaults write -g InitialKeyRepeat -int 10

defaults write com.apple.desktopservices DSDontWriteNetworkStores true


# hide volume logo

launchctl unload -wF /System/Library/LaunchAgents/com.apple.BezelUI.plist

To undo, change YES to NO, or:

http://apple.stackexchange.com/questions/16849/how-do-i-disable-the-volume-control-overlay

# view hidden files

defaults write com.apple.finder AppleShowAllFiles YES

# script

change all permission to run 

chmod u+x *

add to the top:
 #!/bin/bash

then:
chmod u+x scrip.sh

# keys
ssh-add -K ~/.ssh/key.pem

# make key usable
chmod 400 key.pem

# paths
export PYTHONPATH=/Users/xx/sandbox/tails:$PYTHONPATH

# dumped
mysqldump -u [uname] -p[pass] db_name > db_backup.sql

# igrations
APPLICATION_STAGE=dev alembic upgrade head
APPLICATION_STAGE=dev alembic revision --autogenerate

# UWSGI
ps -aef | grep uwsgi

alias wstart='uwsgi --ini emperor.ini'
alias wstop='uwsgi --stop /home/ec2-user/workstation.pid'

# INSTANCE
sudo yum update
sudo yum install nginx
sudo yum groupinstall "Development Tools"
sudo yum install -y mysql-devel
sudo yum clean all

# scp
scp -i /path/to/your/.pemkey -r /copy/from/path user@server:/copy/to/path

## JONGO -----------

pip install -r requirements/common.txt


## celery
sudo /etc/rc.d/init.d/celeryd stop
sudo /etc/rc.d/init.d/celerybeat stop

sudo /etc/rc.d/init.d/celeryd restart
sudo /etc/rc.d/init.d/celerybeat restart

sudo vim /etc/rc.d/init.d/celeryd


celery -A proj inspect active

start worker
celery -A ws worker -l info


start beat
celery -A ws beat -l info

start redis
redis-server

clear queue
celery -A ws purge -f

