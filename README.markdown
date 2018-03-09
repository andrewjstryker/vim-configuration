# Vim Configuration

**Warning**: this is a work in progress and quite likely not working yet.

I maintain Vim configuration files across several machines.  Since I use more
than a few plugins, this can be a bit cumbersome.  You can view this project
as my notes on synchronizing Vim configuration.

A different perspective is that this project is sort-of a Vim plugin
distribution.  Clone the repository to your `~/.vim` or `vimfiles` directory
and have a 'batteries included' Vim, complete with popular plugins for general
purpose text editing.

The approach the project takes primarly builds on two tools:

  * [Pathogen](https://github.com/tpope/vim-pathogen): Tim Pope's excellent
    and light-weight package management system.  Pathogen is *not* really
    a package manager.  Pathogen is a library for manipulating the
    `'runtimepath'`.  Once you have that, pathogen just stands out of the
    way and let git manage packages.

  * [Git submodules](https://git-scm.com/docs/git-submodule): the
    functionality within git to manage external dependencies.  That is
    exactly how we treat each of the plugins.  We want to manage which
    version of a plugin we are using. We otherwise don't care about the
    development path of a plugin.

All this project does is:

  1. Maintain sensible `vimrc` file that works across different operating
     systems

  2. Track all external plugins with git submodules

  3. Provide documentation and a few helper utilities

Does this sound good?  Then let's get started.

## Installation

Installing this project takes a few steps.

  1. Clone the project and its [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules#Cloning-a-Project-with-Submodules)
     into `~/.vim` directory:

        git clone --recursive https://github.com/andrewjstryker/vim-configuration.git ~/.vim

  2. Link to the `vimrc` file:

        ln -s ~/.vim/vimrc ~/.vimrc

  3. Update help tags. Recent versions of Vim provide the command `:helptags`
     for this purpose. Use the argument `ALL` to build help tags for all the
     bundles on the `runtimepath`:

        :helptags ALL

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles`.

## Managing Submodules


### Github Gists and Sub-Trees

Sometimes you might want to directly include the sub-tree of a repository.
Perhaps the file exists as a [Github Gist](https://gist.github.com) or there
is a Vim script that is part of another a non-Vim package. [Git supports
working with
sub-trees.](http://jasonkarns.com/blog/subdirectory-checkouts-with-git-sparse-checkout/)

Here is an example for including Tom Ryder's script that prevents Vim from
writing files to temporary directories:

  1. Git enables sub-trees through the `sparsecheckout` option. This is only
     needs to be done once (and already is in this distribution).

        cd ~/.vim
        git config core.sparsecheckout true

  2. Next, we
  create a place for our new 'package' that is not really
     a package.

        cd bundle
        mkdir noplaintext

  3. We then clone the sub-tree we want into new directory. In this example,
     we place the sub-tree into a `plugin` directory as that is the best fit.
     We are also pulling this content as a submodule, consistent with how we
     are managing other packages.

        cd noplaintext
        git submodule add https://gist.github.com/tejr/5890634 plugin

  4. Last, we commit changes.  Note, we cannot be in the sub-tree directory
     when we perform the commit.

        cd ..
        git commit

Now, Vim will execute the new pseudo package every time we start it.

We will eventually want to update sub-trees. We can either do this one
sub-tree at a time or all of them at once:

   * `git pull` within a sub-tree to update that sub-tree

   * `git submodule foreach git pull` in the `bundle` directory to update
       *all* sub-tree

If the pull works smoothly, we do the typical commit dance from the `.vim`
directory:

      git add bundle/*
      git commit -m "Updated packges"

## Contributing

## References

Here are places learn more about managing your installation and the packages
that I have installed:

   * Doug Black's [A Good Vimrc](https://dougblack.io/words/a-good-vimrc.html)
     blog article contains quite a bit of good advice on how to write a good
     vimrc file.

  * [VimAwesome](https://vimawesome.com) has a superb interface to Vim
    plugins.

  * [Learn Vimscrtip the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
      * Vimrc setup

*  Git refernces 

## License
