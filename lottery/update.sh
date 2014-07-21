#!/bin/sh

#source ~/.nvm/nvm.sh
export PATH=/home/weiwei/.nvm/v0.10.26/bin:$PATH
nvm use 0.10

./da_le_tou.sh
./shuang_se_qiu.sh

git add .
git commit -m 'auto update'
git push origin master
