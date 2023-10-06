A package directory contains two sub-directories:

    start/ - contains plugins that will be automatically loaded
    opt/ - contains plugins that are loaded on demand with :packadd

It may seem a bit complicated, but in practice all you have to do is add your plugin here:

                 ↓ package name
~/ .vim / pack / bundle / start / some-plugin
          ↑ packages dir          ↑ plugin dir



from https://shapeshed.com/vim-packages/#adding-a-package

Managing packages

The new functionality in vim does not add anything for managing plugins; it just loads them. How you manage plugins is up to you.

Managing packages is directly equivalent to using Pathogen so moving a plugin folder into place, cloning a git repository or using git submodules to move packages into the start folder are all options. Whilst I am not a huge fan of git submodules my ~/.vim folder is part of my dotfiles and I find that that git submodules work for me.

In the simplest form you can just move a plugin into the start folder and it will be loaded automatically. It is up to you how you manage it.
Adding a package

Here is an example of how to add a package using Vim’s native approach to packages and git submodules.

cd ~/dotfiles
git submodule init
git submodule add https://github.com/vim-airline/vim-airline.git vim/pack/shapeshed/start/vim-airline
git add .gitmodules vim/pack/shapeshed/start/vim-airline
git commit

Updating packages

To update packages is also just a case of updating git submodules.

git submodule update --remote --merge
git commit
