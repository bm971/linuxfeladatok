#! /bin/bash

#Run using root 
#DONE set executable "chmod 774 <filename>" before running the script or run with "bash <filename>"

#Platform mentoring 
#Linux feladatok I.
#Feladat 3

groupadd -g 80 losers
groupadd -g 100 users
useradd -s /bin/bash -m -d /home/abc123 -u 2000 -g users user
useradd -s /bin/bash -m -u 3000 -g losers loser 

install -m 750 -d -o user -g users www
install -m 751 -d -o user -g users www/htdocs
chmod 644 www/htdocs/index.php>>www/htdocs/index.php

#chown loser:students www/htdocs/index.php

#setfacl -m "g:losers:rwx" www
