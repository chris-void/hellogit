#########################################################################
# 	File Name: hellogit.sh
# 	Author: Shuwen SUN
# 	Mail: chris.void.92@gmail.com
# 	Created Time: Mon Mar 17 22:52:57 2014
## 	This is the script to build a simple git at your current dir

#########################################################################
#!/bin/bash
# Ver 1.0
#
# Including the services 
#	1.change the sorces.list to make the system update faster 
#	2.create a local git bracnch master as well as a dev branch  

#########################################

## First, you should specify the linux that you are using and make sure that you have changed the sources.list, if not please check the setup.sh file.
## Then you should use vi to change the fileformat, because windows and the linux are using the different format. You should input the following command:
#  vi hellogit.sh
## and in the vi command mode(press ESC), input the following command:
#  :set ff=unix
## You should see the output fileformat=unix
## Lastly, to run this script: (before that you should make sure you are aware of Linux '''sudo / su ''' !)
#  sudo su  
#  chmod +x hellogit.sh 
#  ./hellogit.sh


set -o xtraces 

cat > /etc/apt/sources.list <<EOF  
deb http://mirror.sysu.edu.cn/ubuntu precise main restricted universe multiverse
deb http://mirror.sysu.edu.cn/ubuntu precise-security main restricted universe multiverse
deb http://mirror.sysu.edu.cn/ubuntu precise-updates main restricted universe multiverse
deb http://mirror.sysu.edu.cn/ubuntu precise-proposed main restricted universe multiverse
deb http://mirror.sysu.edu.cn/ubuntu precise-backports main restricted universe multiverse

deb-src http://mirror.sysu.edu.cn/ubuntu precise main restricted universe multiverse
deb-src http://mirror.sysu.edu.cn/ubuntu precise-security main restricted universe multiverse
deb-src http://mirror.sysu.edu.cn/ubuntu precise-updates main restricted universe multiverse
deb-src http://mirror.sysu.edu.cn/ubuntu precise-proposed main restricted universe multiverse
deb-src http://mirror.sysu.edu.cn/ubuntu precise-backports main restricted universe multiverse
EOF

apt-get update -y --force-yes && apt-get upgrade -y --force-yes 

# Install git
apt-get install -y git 

# make a new dir for hellogit at this dir 
mkdir hellogit 


# start to use git
cd hellogit
cat > readme_master.md <<EOF
# Hello Git!
This is a file proved that you have successfully created a file on Github!
What's more, this file is in your **master branch**!
EOF

cat > readme_dev.md <<EOF 
# Hello Git again!
This is a file in your **dev bracnch**!
EOF

# exit root  

git init 
git add readme_master.md 
git commit -m "wrote a file into master branch"

git remote add origin git@github.com:youremail@example.com/hellogit.git
git push -f origin master 

git log

#########################################
#
# You should have found the readme_master.md in your github
#
# Now you can do the things down this line
#
########################################


git branch dev 
git checkout dev

git add readme_dev.md
git commit -m "wrote a file into dev branch"

git checkout master
git merge dev

git log

###########################################################
## Here are some commands that be might be useful
## check the status 
#  git status
#
## check the status of branch 
#  git branch 
#
## check the log file of git
#  git log
#
## check the difference of XXX
#  git diff XXX
#
## MAKE SURE U UNDERSTAND THE FOLLOWING COMMAND BEFORE U RUN THEM
## merge the dev branch to the origin 
#  git merge dev
#
## delete the branch dev 
#  git branch -d dev 

## clone a git to the local dir 
#  git clone git@github.com:yourname/hellogit.git







