#! /bin/bash

# redo 2feladat.sh or 3feladat.sh

userdel student
userdel user
userdel loser 

groupdel losers
# group 'users' is primary group of user 'games', so it cannot be deleted
#groupdel users
groupdel students

rm -r /home/student
rm -r /home/abc123
rm -r /home/loser
rm -rf ${PWD}/dumpdir
