#! /bin/bash

#Run using root 
#DONE set executable "chmod 774 <filename>" before running the script or run with "bash <filename>"

#Platform mentoring 
#Linux feladatok I.
#Feladat 3

groupadd -g 80 losers
groupadd -g 100 users
groupadd -g 120 students
useradd -s /bin/bash -m -u 1200 -g students student
useradd -s /bin/bash -m -d /home/abc123 -u 2000 -g users user
useradd -s /bin/bash -m -u 3000 -g losers loser 

if [ $(umask) == 0022 ]
then
   install -m 750 -d -o user -g users www
   #user::rwx
   #group::r-x
   setfacl -m m:r-x www
   #other::---
   setfacl -d -m "u::rwx" www
   #default:group::r-x
   setfacl -d -m "g:losers:rwx" www
   setfacl -d -m m:rwx www
   setfacl -d -m o:r-x www

   install -m 751 -d -o user -g users www/htdocs
   #user::rwx
   #group::r-x
   setfacl -m "g:students:r--" www/htdocs/
   setfacl -m m:r-x www/htdocs
   #other::--x

   chmod 644 www/htdocs/index.php>>www/htdocs/index.php
   chown user:students www/htdocs/index.php
   #user::rw-
   setfacl -m "u:loser:rwx" www/htdocs/index.php
   setfacl -m "g::r--" www/htdocs/index.php
   #mask::rwx
   #other::r--
else
   umask 0022
   install -m 750 -d -o user -g users www
   #user::rwx
   #group::r-x
   setfacl -m m:r-x www
   #other::---
   setfacl -d -m "u::rwx" www
   #default:group::r-x
   setfacl -d -m "g:losers:rwx" www
   setfacl -d -m m:rwx www
   setfacl -d -m o:r-x www

   install -m 751 -d -o user -g users www/htdocs
   #user::rwx
   #group::r-x
   setfacl -m "g:students:r--" www/htdocs/
   setfacl -m m:r-x www/htdocs
   #other::--x

   chmod 644 www/htdocs/index.php>>www/htdocs/index.php
   chown user:students www/htdocs/index.php
   #user::rw-
   setfacl -m "u:loser:rwx" www/htdocs/index.php
   setfacl -m "g::r--" www/htdocs/index.php
   #mask::rwx
   #other::r--
fi


