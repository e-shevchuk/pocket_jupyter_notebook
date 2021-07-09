# Pocket jupyter

Launch jupyter notebook for any folder on your mac/linux
hard drive with just two console commmands.

## How to use:

Your notebooks will be accessible at: <a>localhost:8888/tree</a>. Feel freeto add to the browser Favorites.

Launch in any directory with terminal commands:
```angular2html
jpt build
jpt start
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
jpt start
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
```