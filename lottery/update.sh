#!/bin/sh

./da_le_tou.sh
./shuang_se_qiu.sh

git add .
git commit -m 'auto update'
git push origin master
