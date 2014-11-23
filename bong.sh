#!/bin/bash

function install {
        echo `sudo wget https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev && mv screenfetch-dev screenfetch && sudo chmod +x screenfetch && sudo mv screenfetch /usr/bin`
}

if [ -e /usr/bin/screenfetch ]; then
        echo "Screenfetch already installed!"
else
        install
fi
