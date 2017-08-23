#!/bin/bash
val=`expr 2 + 2`
#val2=`awk 2 + 2`
echo $val
:<<!
 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。

expr 是一款表达式计算工具，使用它能完成表达式的求值操作。 
!

a=10
b=20

val=`expr $a + $b`
echo $val

val=`expr $a - $b`
echo $val

val=`expr $a \* $b`
echo $val

val=`expr $a / $b`
echo $val

val=`expr $a % $b`
echo $val



if [ $a == $b ]
then
	echo "相等"
fi
if [ $a != $b ]
then
	echo "不相等"
fi