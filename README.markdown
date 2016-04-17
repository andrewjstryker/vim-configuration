# Vim Configuration
---

Warning: this is a work in progress and quite likely not working yet.

This project is sort-of a Vim plugin distribution.  When complete, you will be
able to clone this to you ~/.vim directory and be free to go.  You will have
the plugins that you will want to use most *and* you will have confidence that
each plugin works with all the other plugins.

Rather than build something from scratch, we building on:

  * [Pathogen](https://github.com/tpope/vim-pathogen): Tim Pope's excellent
      and light-weight package management system.  But pathogen is *not*
      really a package manager. Pathogen is a library for manipulating the
      runtime path. Once you have that, just stand out of the way and let git
      manage packages.

  * [Git submodules](https://git-scm.com/docs/git-submodule): the
      functionality within git to manage external dependencies.  That is
      exactly how we treat each of the plugins.  We want to manage which
      version of a plugin we are using. We otherwise don't care about the
      development path of a plugin.

All this project does is:

  1. Maintian sensible vimrc file that works with this system

  2. Track all external plugins with git submodules

  3. Provide documentation and a few helper utilities

TODO: describe the purpose, the content, and how to use.
