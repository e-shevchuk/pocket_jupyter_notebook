#!/bin/sh
sudo chmod +x ./go.sh
rm -f /usr/local/bin/jpt
sudo ln -s "$(pwd)/go.sh" /usr/local/bin/jpt
