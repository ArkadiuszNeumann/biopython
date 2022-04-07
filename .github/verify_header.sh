#!/bin/bash

year=$(date +"%Y")
regex="^(Copyright\(c\) )([0-9]{4}-([0-9]{4}))( Arek testowanko)"
echo $year
file=$(cat $1)
if [[  $file =~ $regex ]]
then
    echo ${BASH_REMATCH[3]}
    if [[ $year == ${BASH_REMATCH[3]} ]]
    then
        echo ten sam
    else
        echo $1 does not contain proper licence header
        exit 1
    fi
    
fi
