# Vim Configuration

**Warning**: this is a work in progress and quite likely not working yet.

I maintain Vim configuration files across several machines.  Since I use more
than a few plugins, this can be a bit cumbersome.  You can view this project
as my notes on synchronizing Vim configuration.

A differnt perspective is that this project is sort-of a Vim plugin
distribution.  When complete, you will be able to clone this to you ~/.vim
directory and be free to go.  You will have the plugins that you will want to
use most *and* you will have confidence that each plugin works with all the
other plugins.

The approach the project takes primarly builds on two tools:

* [Pathogen](https://github.com/tpope/vim-pathogen): Tim Pope's excellent
      and light-weight package management system.  Pathogen is *not* really
      a package manager. Pathogen is a library for manipulating the
      `'runtimepath'`.  Once you have that, just stand out of the way and let
      git manage packages.

* [Git submodules](https://git-scm.com/docs/git-submodule): the
      functionality within git to manage external dependencies.  That is
      exactly how we treat each of the plugins.  We want to manage which
      version of a plugin we are using. We otherwise don't care about the
      development path of a plugin.

All this project does is:

1. Maintian sensible vimrc file that works with this system

2. Track all external plugins with git submodules

3. Provide documentation and a few helper utilities

Does this sound good?  Then let's get started.

## Installation

Installing this project takes a few steps.

1. Clone the project into `~/.vim` (on `vimfiles` if you are on Windows) directory:

    git clone https://github.com/andrewjstryker/vim-configuration.git ~/.vim



2. [Clone each of the
   submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules#Cloning-a-Project-with-Submodules)

    cd ~/.vim
    git submodule init
    git submodule update

## Contributing

