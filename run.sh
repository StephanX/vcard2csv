#!/bin/bash

cd git/vcard2csv
git pull
cd /mnt/chromeos/MyFiles/Downloads
FILENAME=$(ls -t *.vcf | head -n 1)
cp ${FILENAME} contacts.vcf
${HOME}/bin/vcf2csv.py contacts.vcf contacts.csv