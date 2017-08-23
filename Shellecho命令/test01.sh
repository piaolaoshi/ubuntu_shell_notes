#!/bin/sh
:<<!
#read name
#echo $name
!
echo -e "sss \n" #-e 开启转义
echo "dsfsd"

echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

#显示结果定向至文件
#echo "It is a test" > myfile

#原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"'

:<<!
 这里使用的是反引号 
 ``
 , 而不是单引号 '
结果将显示当前日期
!
echo `date`