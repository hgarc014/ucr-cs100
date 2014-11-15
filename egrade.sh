#!/bin/bash

DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%H-%M")
FILE=all.$DATE\.$TIME\.rem
I=1
rm all*.rem

for INST in people/students/*;do
        STR=${INST##*/}
        echo $I: $STR | tee -a $FILE
        let I=I+1
        scripts/calcgrade.sh $STR >> $FILE
    done

