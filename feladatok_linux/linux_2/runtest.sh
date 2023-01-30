#! /bin/bash

# run at ~/playground/linuxfeladatok_pg/

cp $1 dumpdir/$1 # copy the given file to the dumpdir directory
chmod 774 dumpdir/$1 # make executable for user and group, readonly for others
cd dumpdir
./$1 # run the copied script at dumpdir directory
