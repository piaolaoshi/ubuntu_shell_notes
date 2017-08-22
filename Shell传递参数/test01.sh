#!/bin/bash
echo  "Hello World !"
echo -e
# #! 是一个约定的标记，它告诉系统这个脚本需要什么解释器来执行，即使用哪一种 Shell。
#echo 命令用于向窗口输出文本。 

:<<!
echo "多行注解"
!

#将/etc下目录文件名循环出来
:<<!
for file in `ls /etc` 
do
	echo $file
done
!
echo -e

your_name="piaolaoshi"
#echo $your_name
echo ${your_name}
str="hi \"$your_name\""
echo $str $your_name ${#str}
#使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。
#readonly your_name

#查找字符 s 的位置，没有成功输出，一直输出0
echo `expr index "your_name" s`

your_name="linshusen"
#变量被删除后不能再次使用。unset 命令不能删除只读变量。
#unset your_name
echo ${your_name:3:5}

echo -e

:<<!
for x in one two three
do
	echo number $x
done

for x in /var/log/*
do
	#echo "$x is a file living in /var/log"
	echo "$(basename $x) is a file living in /var/log"
done

这个$x获得的是绝对路径文件名；可以使用 “basename” 可执行程序来除去前面的路径信息。
如果只引用当前工作目录中的文件（例如，如果输入 “for x in *”），则产生的文件列表将没有路径信息的前缀。
!

array_name=(
2
3
1
4
)
echo ${array_name[2]}
echo ${array_name[@]}
length1=${#array_name[@]}
length2=${#array_name[*]}
lengthn=${#array_name[9]}
echo $lengthn