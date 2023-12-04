#!/bin/bash

source config.ini

# Validating that there's only one input
if [ $# -eq 0 ]
then
    echo "Please enter a key"
    exit 1
elif [ $# -gt 1 ]
then
    echo "Please enter one key only!"
    exit 1
fi

if [ -v $1 ]
then 
	echo ${!1}	
else 
	echo "var is unset"	
fi

