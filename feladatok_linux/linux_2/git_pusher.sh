#! /bin/bash

# run with own user
# run where the pushed script located (~/playground/linuxfeladatok_pg/)

# $1 file
# $2 commitmessage
# $3 number

cp $1 ~/linuxfeladatok/feladatok_linux/linux_$3

cd ~/linuxfeladatok/

git add feladatok_linux/linux_$3/$1
git commit -m $2
git push -u origin main
