#!/bin/bash

sudo make clean
cp /MyCPABE/data1 /MyCPABE/data

sudo make 

DoSetup()
{
./MyCPABE/setup /MyCPABE/PK /MyCPABE/MK
}

DoEncypt()
{
./MyCPABE/enc PK MyCPABE/data "ngan1 and ngan2 and ngan3 and ngan4 and ngan5 and ngan6 and ngan7 and ngan8 and ngan9 and ngan10 and ngan11 and ngan12 and ngan13 and ngan14 and ngan15 and ngan16 and ngan17 and ngan18 and ngan19 and ngan20 and ngan21 and ngan22 and ngan23 and ngan24 and ngan25 and ngan26 and ngan27 and ngan28 and ngan29 and ngan30 and ngan31 and ngan32 and ngan33 and ngan34 and ngan35 and ngan36 and ngan37 and ngan38 and ngan39 and ngan40" MyCPABE/data.enc
}

scp /MyCPABE/PK /MyCPABE/MK /MyCPABE/data.enc lamthanhngan@192.168.1.10:/home/lamthanhngan/Desktop/

DoKeyGen()
{
./MyCPABE/keygen sk_Ngan PK MK 40 "ngan1" "ngan2" "ngan3" "ngan4" "ngan5" "ngan6" "ngan7" "ngan8" "ngan9" "ngan10" "ngan11" "ngan12" "ngan13" "ngan14" "ngan15" "ngan16" "ngan17" "ngan18" "ngan19" "ngan20" "ngan21" "ngan22" "ngan23" "ngan24" "ngan25" "ngan26" "ngan27" "ngan28" "ngan29" "ngan30" "ngan31" "ngan32" "ngan33" "ngan34" "ngan35" "ngan36" "ngan37" "ngan38" "ngan39" "ngan40"
}

DoDecrypt()
{
./MyCPABE/dec PK sk_Ngan MyCPABE/data.enc MyCPABE/data
}
echo Setup time: 
time DoSetup
echo Encrypt time
time DoEncypt
time DoKeyGen
time DoDecrypt
