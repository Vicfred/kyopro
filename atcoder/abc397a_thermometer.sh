X=$(sed s/\\.//)
if [ $X -ge 380 ];then echo 1;
elif [ $X -lt 375 ];then echo 3;
else echo 2;fi
