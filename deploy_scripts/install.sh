#!/bin/bash
source /home/ec2-user/.bash_profile
cd /var/www/html
node --version
if [ $? -ne 0 ]
then
   curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
   . ~/.nvm/nvm.sh
   nvm install 4.3.2
fi

file="/var/www/html/index.html"
[ -f $file ] && rm $file
