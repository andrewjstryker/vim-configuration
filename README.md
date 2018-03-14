# Vim Configuration

Maintaining a consistent Vim environment across several machines can be a bit of
a pain. That's mostly due to trying to keep third-party plugins and packages in
sync. This project shows how to synchronize a complex configuration using:

* Native Vim package management. Beginning in version 8, Vim supports a package
  management that is conceptually similar to Tim Pope's excellent
  [Pathogen](https://github.com/tpope/vim-pathogen).

* [Git submodules](https://git-scm.com/docs/git-submodule). Git supports
  managing external dependencies that are also git repositories. That is exactly
  how we treat each of the plugins. We want to manage which version of a plugin
  we are using. We otherwise don't care about the development path of a plugin.

A different perspective is that this project is sort-of a Vim plugin
distribution.  Clone the repository to your `~/.vim` or `vimfiles` directory
and have a 'batteries included' Vim, complete with popular plugins for general
purpose text editing.

<!-- vim-markdown-toc GFM -->

* [Installation](#installation)
* [Managing Plugins and Packages](#managing-plugins-and-packages)
* [Managing Submodules](#managing-submodules)
* [Future Plans](#future-plans)
* [Contributing](#contributing)
* [References](#references)
* [License](#license)

<!-- vim-markdown-toc -->

## Installation

To install, you need to clone this repository and its
[submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules#Cloning-a-Project-with-Submodules)
into your `~/.vim` directory:

```sh
git clone --recursive https://github.com/andrewjstryker/vim-configuration.git ~/.vim
```

Next, link to the `vimrc` file, after backing-up your own `vimrc`:

```sh
mv ~/.vimrc ~/.vimrc.bak
ln -s ~/.vim/vimrc ~/.vimrc
```

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles` and
then change `.vimrc` to `_vimrc`.

## Managing Plugins and Packages

Most of the scripts on the [Vim website](https://www.vim.org/scripts) are
*plugins*. To add a new plugin:

1. Clone the repository to `~/.vim/pack/<respository-name>start`. For example:

```sh
mkdir -p ~/.vim/pack/vim-example/start
cd ~/.vim/pack/vim-example/start
git clone https://example.com/example/vim-example ~/.vim/pack/vim-example/start
```

2. Update help tags. The `:helptags` command with the `ALL` argument scans all
   the files in the `runtimepath` and builds a new index file. Within `vim`,
   type:

```viml
:helptags ALL
```

3. Add the changes into the `git` index.

```sh
cd ~/.vim
git add TAGS pack/vim-example/start/vim-example
```

## Managing Submodules



## Future Plans

## Contributing

I am happy to accept contributions to this project, particularity if they
advance my [future plans](#future-plans). File issues and merge requests on
GitHub. I'm busy, so please don't be surprised if I don't respond immediately.
Send me an email or Twitter DM only after a couple weeks of non response.

There are a couple of things that you can do make collaboration easier:

- File issues on GitHub. There's no need to send me an email or Twitter DM.
  Let's use an issue tracking tool to track issues. If you would me to
  incorporate a new feature, please check with me first. Let's be on the same
  page *prior* to you writing a bunch of code that I don't want.

- Write [good commit
  messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
  when submitting merge requests. I don't have much time to decipher the fixes
  or features that you are proposing. So let's agree to communicate clearly.

Changes 

## References

Here are a few places to learn more about Vim scripting, plugins/packages, and Git:

- Doug Black's [A Good Vimrc](https://dougblack.io/words/a-good-vimrc.html) blog
  article contains quite a bit of good advice on how to write a good vimrc file.

- [VimAwesome](https://vimawesome.com) has a superb interface to Vim plugins.

- [Learn Vimscrtip the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)

- [Vim: So long Pathogen, hello native package
  loading](https://shapeshed.com/vim-packages/) nicely explains how Vim's native
  package management system works. The explanation is not as terse as the
  documentation that's found via `:help packages`.

*  Git reference

## License
