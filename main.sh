#!/usr/bin/env bash
export LANG=en_US.UTF-8
target_host=$(hostname)
# Implemented at 80% or more
MEM_LIMIT=80
MEM_USED=`free | grep Mem | awk '{ print ($3-$6-$7)/$2*100 }'`

Check-memory(){
    if [ $MEM_USED > $MEM_LIMIT ]; then
        echo "$target_host memory over  $MEM_USED %"
        exit
    fi
}


Action_process(){
    echo "Action process"
    sleep 5
}

if echo ${target_host}|grep ; then
    Check-memory()
    Action_process()
fi
