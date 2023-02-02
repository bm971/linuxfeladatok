#! /bin/bash

# run with own user
# run where the pushed script located (~/playground/linuxfeladatok_pg/)

echo "Required arguments: 1.file 2.commitmessage 3.number"

# $1 file
# $2 commitmessage
# $3 number

#szebb lenne igy (vagy kapcsolokkal):
#echo "File you want to push to repo"
#read FILE

cp $1 ~/linuxfeladatok/feladatok_linux/linux_$3

cd ~/linuxfeladatok/

git add feladatok_linux/linux_$3/$1
git commit -m $2
git push -u origin main
