#!/bin/bash

read -p "KILL? (y/n)" confirm

if [[ "$confirm" != "y" ]];then
    echo "All safe."
    exit 1
fi

lsblk -d -n -o NAME,ROTA | while read name rota; do

    if [[ $name == nvme* ]]; then

        sudo nvme format -s1 /dev/"$name"

    elif [[ $rota == 1 ]]; then

        sudo hdparm --user-master u --security-set-pass p /dev/"$name"
        sudo hdparm --user-master u --security-erase p /dev/"$name"

    else
        echo "[]ALERT!!] unknown device /dev/$name"
    fi

done
