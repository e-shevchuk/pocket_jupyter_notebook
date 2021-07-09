# Pocket jupyter

Launch jupyter notebook for any folder on your mac/linux
hard drive with just two console commmands.

## How to use:

Your notebooks will be accessible at: <a>localhost:8888/tree</a>. Just add it to the browser Favorites.

Launch in any directory for the first time with terminal commands:
```angular2html
jpt up
```

Want to pause the Jupyter engine and come back to it later? Run:

```angular2html
jpt stop
...
jpt start
```

Want to work in other directory, run:
```angular2html
# in current directory
jpt down 

# move to another directory
cd < other directory >

# run in other directory
jpt up
```

## How to install

### Prerequisites:

- Docker desktop

### Installation
```angular2html
cd < your home directory, or any other >
git clone git@github.com:e-shevchuk/pocket_jupyter_notebook.git jupyter
cd jupyter
chmod +x install.sh
./install.sh
jpt build
```

## Default libraries

- numpy
- pandas
- notebook
- nbconvert<6
- jupyterthemes
- ipywidgets
- jupyter_contrib_nbextensions
- scikit-learn
- statsmodels
- altair>=4.1.0,<4.2.0
- sqlalchemy
- pyTelegramBotAPI
- sh>=1.14.1,<1.15.0

## How to add/remove libraries

1. Find and edit `requirements.txt` in the installation directory.
2. Run:
```angular2html
jpt down
jpt build
jpt up
```
