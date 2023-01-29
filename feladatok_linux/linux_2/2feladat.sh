#! /bin/bash

#Run using root 
#DONE set executable "chmod 774 <filename>" before running the script or run with "bash <filename>"

#Platform mentoring 
#Linux feladatok I.
#Feladat 2

groupadd -g 80 losers
groupadd -g 100 users
groupadd -g 120 students
useradd -s /bin/bash -m -u 1200 -g students student
useradd -s /bin/bash -m -d /home/abc123 -u 2000 -g users user
useradd -s /bin/bash -m -u 3000 -g losers loser 

install -m 751 -d -o student -g users log
chmod 640 log/error.log>>log/error.log
chown user:students log/error.log 
ln -s ${PWD}/www/include ${PWD}/php5 # create symlink
install -m 755 -d -o user -g students www # csak a kulonbozo user, es group miatt kell egyebkent eleg lenne csak a kovetkezo parancs
install -m 775 -d -o loser -g losers www/htdocs
chmod 644 www/htdocs/index.php>>www/htdocs/index.php
chown loser:students www/htdocs/index.php
install -m 2755 -d -o student -g users www/include
chmod 755 www/include/main.inc>>www/include/main.inc
chown user:students log/error.log


#kerdesek
#miert van ubuntun a username/comment utan 3 vesszo?
