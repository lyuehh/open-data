#!/bin/sh

export PATH=/home/weiwei/.nvm/v0.10.26/bin:$PATH

./da_le_tou.sh
./shuang_se_qiu.sh

git add .
git commit -m 'auto update'
git push origin master
