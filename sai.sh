#!/bin/bash

script=$0
script=`basename ${script}`

function checkIfInstalled {
        if [ -e /usr/bin/screenfetch ]; then
                echo "Screenfetch already installed!"
        else
                echo `wget https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev && mv screenfetch-dev screenfetch && chmod +x screenfetch && mv screenfetch /usr/bin`
        fi
}

function checkIfInstalledAndFinnaDeleteTheShit {
        if [ -e /usr/bin/screenfetch ]; then
                echo "Screenfetch already installed!"
        else
                echo `wget https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev && mv screenfetch-dev screenfetch && chmod +x screenfetch && mv screenfetch /usr/bin && rm $0`
        fi
}

echo "1. Install screenfetch"
echo "2. Install screenfetch and delete install script"

read opt

if [ $opt -eq 1 ]; then
        checkIfInstalled
elif [ $opt -eq 2 ]; then
        checkIfInstalledAndFinnaDeleteTheShit
fi

