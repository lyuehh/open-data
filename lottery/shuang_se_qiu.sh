#!/bin/sh

if [ -d shuang_se_qiu.csv.bak ]; then
    rm shuang_se_qiu.csv.bak
fi
mv shuang_se_qiu.csv shuang_se_qiu.csv.bak

echo 'id,date,red1,red2,red3,red4,red5,red6,blue1' > shuang_se_qiu.csv

y=`date +%Y`
for i in `seq 2003 ${y}`
do
    curl -s  "http://www.3dcp.cn/zs/gonggao.php?type=ssq&year=$i" |  iconv -f gbk -t utf8  | hquery -p -r '$("table").eq(13).parent().html()' | hquery -p -f shuang.js | grep -v '^$' >> shuang_se_qiu.csv
done
