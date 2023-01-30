#! /bin/bash

# redo 2feladat.sh

userdel student
userdel user
userdel loser 

groupdel losers
groupdel users
groupdel students

rm -r /home/student
rm -r /home/abc123
rm -r /home/loser
rm -rf ${PWD}/dumpdir
