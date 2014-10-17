#!/bin/bash

if [ -z "$1" ]
then
    echo "pass in lecture number"
else
    col -bp < lecture/lecture$1 | vim -
fi

