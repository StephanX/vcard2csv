#!/bin/bash

cd git/vcard2csv
git pull
cd /mnt/chromeos/MyFiles/Downloads
FILENAME=$(ls -t *.vcf | head -n 1)
${HOME}/bin/vcf2csv.py "${FILENAME}" contacts.csv