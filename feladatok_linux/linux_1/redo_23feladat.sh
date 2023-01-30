#! /bin/bash

# redo 2feladat.sh

userdel student
# group 'users' is primary group of user 'games', so it cannot be deleted
#userdel user
userdel loser 

groupdel losers
groupdel users
groupdel students

rm -r /home/student
rm -r /home/abc123
rm -r /home/loser
rm -rf ${PWD}/dumpdir
