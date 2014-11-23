#!/bin/bash

if [ -z $1 ]; then
    echo "no command given"
    exit
fi

CMD="cat all*.rem"

if [ $1 == "sort" ]; then
    CMD="$CMD | grep 'running total' | sort -nk4"
    eval $CMD
    exit
elif [ $1 == "sortf" ]; then
    CMD="$CMD | grep 'overall' | sort -nk4"
    eval $CMD
    exit
fi

UI=""

if [ ! -z $2 ]; then
    if [ $2 == "u" ]; then
        UI="-A34"
    fi
fi

cat all*.rem | grep $1 $UI

