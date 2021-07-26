#!/bin/bash
i=1;        #文件夹里图片数量，一定要跟文件夹里的数量相同，因为是采用倒序的方法命名，即以tree_020,tree_019...的顺序命名
for img in `ls *.png`;      #图片的格式
do mv $img fish`printf %d $i`.png;    #printf前的字符tree_表示文件名共有的，可换成自己的字符串，也可删掉，2d表示序号的位数（00-99），可换成3d（000-999）....
i=`expr $i + 1`; 
done

