#!/bin/sh
git clone git@github.com:e-shevchuk/pocket_jupyter_notebook.git
cd pocket_jupyter_notebook
sudo chmod +x ./go.sh
sudo ln -s '$(pwd)'/go.sh /usr/local/bin/jpt
