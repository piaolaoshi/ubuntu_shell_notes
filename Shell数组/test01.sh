#!/bin/bash
my_array=(a b "c" d)
echo "${my_array[0]}"
echo "${my_array[1]}"
echo ${my_array[2]}
#获取全部元素
echo "${my_array[*]}"
echo "${my_array[@]}"
#获取数组长度
echo "${#my_array[*]}"
echo "${#my_array[@]}"