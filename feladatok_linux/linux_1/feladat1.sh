#! /bin/bash 

#DONE set executable "chmod 774 <filename>" before running the script or run with "bash <filename>"

#Platform mentoring 
#Linux feladatok I.
#Feladat 1


mkdir -m 755 log
chmod 640 log/access.log>>log/access.log #!#:2 el lehetne sporolni a duplikaciot???
mkdir -m 711 php5
chmod 2650 php5/main.inc>>php5/main.inc
mkdir -m 2755 tmp
ln log/access.log tmp/a.log # create hardlink sourcefile=access.log
mkdir -m 755 www
mkdir -m 755 www/htdocs
chmod 2711 www/htdocs/index.php>>www/htdocs/index.php
ln -s ${PWD}/php5 ${PWD}/www/htdocs/include # create symlink

#kerdesek
#mitol fugg, hogy /bin/bash vagy /bin/sh?
#setuid pontosan mire jo?
#hardlinket mire szoktak hasznalni?
