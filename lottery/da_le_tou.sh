#!/bin/sh


if [ -d da_le_tou.csv.bak ]; then
    rm da_le_tou.csv.bak
fi
mv da_le_tou.csv da_le_tou.csv.bak
echo 'id,date,red1,red2,red3,red4,red5,blue1,blue2' > da_le_tou.csv

for i in `seq 2007 2014`
do
    curl -s  "http://www.3dcp.cn/zs/gonggao.php?type=dlt&year=$i" |  iconv -f gbk -t utf8  | hquery -p -r '$("table").eq(13).parent().html()' | hquery -p -f da.js | grep -v '^$' >> da_le_tou.csv
done
