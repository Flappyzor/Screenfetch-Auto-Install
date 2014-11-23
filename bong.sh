#!/bin/bash

function install {
        echo `wget https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev && mv screenfetch-dev screenfetch && chmod +x screenfetch && mv screenfetch /usr/bin`
}

if [ -e /usr/bin/screenfetch ]; then
        echo "Screenfetch already installed!"
else
        install
fi
