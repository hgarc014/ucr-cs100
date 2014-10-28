#!/bin/bash

checkKeys()
{
    local TMPFILE="REMOVE_ME.tmp"
    for INST in ../people/instructors/*;do
        local STR=${INST##*/}
        if [[ $STR == *@* ]];then
            gpg --list-keys $STR  > $TMPFILE 2> $TMPFILE
            if [ $? -eq 0 ] ;then
                break
            else
                ./install-instructor-keys.sh
            fi
        fi
    done
    rm $TMPFILE
}


checkKeys


