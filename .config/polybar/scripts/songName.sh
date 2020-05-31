#!/bin/zsh 
chars=${"$(cmus-remote -Q | grep 'tag title')"#*tag title}
#if [[ ${#chars} -gt 10 ]]
#then
#while :; do

 # for (( i=0; i<${#chars}; i++ )); do

#    sleep 0.5

 #   echo -n "${chars:$i:10}" "\r"

  #done

#done
#else
if [[ ${#chars} -ne 0 ]]
then
    echo ${chars}
else
    echo 契 
# 凌 稜 綾 玲 契  怜 列 劣
fi


