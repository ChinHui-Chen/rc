#!/bin/bash

if [ $1 = 'aep2.2' ]; then
    HOSTS="10.10.0.231 10.10.0.232 10.10.0.233"
elif [ $1 = 'cluster2' ]; then
    HOSTS="hostA hostB hostC hostD hostE hostF"
else
    exit
fi

for host in $HOSTS
do
   tmux splitw "ssh hopebayadmin@$host"
   tmux select-layout tiled
done
tmux set-window-option synchronize-panes on
