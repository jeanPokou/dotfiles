#!/bin/sh
echo -e "\n\n Installing Operator mono "
curl  -L https://www.dropbox.com/sh/pm238qqpycyo1sx/AACOvJ21j4UDL9T7LTiMoKeaa?dl=1 -o op.tar.gz
echo -e "Extracting font files"
mkdir -p fonts/operatorMono
tar -zxf op.tar.gz -C fonts/operatorMono
cd fonts
cd operatorMono
find . -mindepth 1 -type f -print -exec mv {} .. \;
rm -rf operatorMono
mv *. /Library/Fonts/

echo -e "\n\n Font Installed , cleaning files"
rm op.tar.gz
rm -rf fonts
echo -e "\n\n done Installing Operator Mono"