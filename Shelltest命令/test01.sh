#!/bin/bash

num1=100
num2=100
if test $num1 -eq $num2
then
	echo "相等"
else
	echo "不相等"
fi

a=5
b=6
result=$[a+b]
echo $result

num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi

if test -e ./bash
then
    echo '文件已存在!'
else
    echo '文件不存在!'
fi

#Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为："!"最高，"-a"次之，"-o"最低。
if test -e ./notFile -o -e ./bash
then
    echo '有一个文件存在!'
else
    echo '两个文件都不存在'
fi
