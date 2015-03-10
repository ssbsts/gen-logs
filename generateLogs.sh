#!/bin/bash

timestamp=1423983600
while [ $timestamp -lt 1425798000 ]; do
begin=$timestamp; end=`expr $begin + 300`;
for i in dany sl gf ; do
for j in 01 02 03 ; do
for version in 1.1 2.1 ; do
k=win
for m in initializeDevice createEntitlement personalizeDevice ; do
for l in 200 400 408 499 504 ; do
hour=`date -d @${timestamp} +%H | sed 's/^0//'`
if [[ "$l" -eq "200" && "$hour" -gt "8" && "$i" == "dany" ]] ; then
count=`shuf -i 17-40 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
elif [[ "$l" -eq "200" && "$hour" -gt "8" && "$i" == "sl" ]] ; then
count=`shuf -i 25-50 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
elif [[ "$l" -eq "200" && "$hour" -gt "8" && "$i" == "gf" ]] ; then
count=`shuf -i 45-75 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
elif [[ "$l" -eq "200" && "$hour" -lt "9" && "$i" == "dany" ]] ; then
count=`shuf -i 10-21 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
elif [[ "$l" -eq "200" && "$hour" -lt "9" && "$i" == "sl" ]] ; then
count=`shuf -i 15-27 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
elif [[ "$l" -eq "200" && "$hour" -lt "9" && "$i" == "gf" ]] ; then
count=`shuf -i 20-35 -n 1`
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $count >> testAccLogs.log
else
echo $begin $end ${i} ${i}${j} $version ${k} ${m} ${l} $(( ( RANDOM % 4 )  + 1 )) >> testAccLogs.log
fi
done; done; done; done; done;
timestamp=`expr $timestamp + 300`
done
