#!/bin/bash

FILE=all.rem
I=1
> $FILE

for INST in people/students/*;do
        STR=${INST##*/}
        echo $I: $STR | tee -a $FILE
        let I=I+1
        scripts/calcgrade.sh $STR >> $FILE
    done

