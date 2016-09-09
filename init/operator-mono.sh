#!/bin/sh
echo -e "\n\n Installing Operator mono "
curl  -L https://www.dropbox.com/sh/pm238qqpycyo1sx/AACOvJ21j4UDL9T7LTiMoKeaa?dl=1 -o op.tar.gz
echo -e "Extracting font files"
mkdir -p fonts/operatorMono
tar -zxf op.tar.gz -C fonts/operatorMono
cd fonts
cd operatorMono
find . -mindepth 1 -type f -print -exec mv {} .. \;
cd ..
rm -rf operatorMono 
cd ..
mv fonts/*  /Library/Fonts/
echo -e "\n\n Font Installed , cleaning files"
pwd
rm -rf fonts
rm -rf op.tar.gz
echo -e "\n\n done Installing Operator Mono"