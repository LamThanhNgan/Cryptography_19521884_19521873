#!/bin/bash

sudo make uninstall

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "SOURCE is '$SCRIPT_DIR'"

make clean

cp $SCRIPT_DIR/MyCPABE/data1 $SCRIPT_DIR/MyCPABE/data

make 

sudo make install

DoSetup()
{
./MyCPABE/setup PK MK
}

DoEncypt()
{
./MyCPABE/enc PK MyCPABE/data "ngan1 or ngan2 and ngan3" MyCPABE/data.enc
}


echo Setup time: 
time DoSetup
echo Encrypt time
time DoEncypt

scp PK MK lamthanhngan@192.168.1.10:/home/lamthanhngan/Desktop/IOT_ABE/CLIENT/Client/

