#!/bin/bash

demoFun(){
	echo "这是第一个shell函数"
}
#demoFun
funWithReturn(){
	echo "输入一个数"
	read number01
	echo "输入第二个数"
	read number02
	return $(($number01 + $number02))
}
funWithReturn
echo "和为$?"

funWithParam(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 $* !"
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73