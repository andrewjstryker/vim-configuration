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

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Included Packages](#included-packages)
  * [Interface](#interface)
  * [Text documents](#text-documents)
  * [Data files](#data-files)
  * [Vim utilities](#vim-utilities)
* [Installation](#installation)
* [Managing Plugins and Packages](#managing-plugins-and-packages)
  * [Adding plugins](#adding-plugins)
  * [Adding packages](#adding-packages)
  * [Updating plugins or packages](#updating-plugins-or-packages)
* [Future Plans](#future-plans)
* [Contributing](#contributing)
* [Contacting the Maintainer](#contacting-the-maintainer)
* [References](#references)
* [License](#license)

<!-- vim-markdown-toc -->

## Included Packages

This project includes numerous packages as submodules.

Here's what I need in my Vim configuration:

- Looks good

-

### Interface

- **[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)**:
  [the best color scheme
  ever](https://observer.com/2015/02/meet-the-man-behind-solarized-the-most-important-color-scheme-in-computer-history/).

- **[vim-stay](https://github.com/zhimsel/vim-stay)**: automated view session
  creation and restoration whenever editing a buffer, across Vim sessions and
  window life cycles.

- **[goyo.vim](https://github.com/junegunn/limelight.vim)**: distraction free writing

- **[limelight.vim](https://github.com/junegunn/limelight.vim)**: hyper-focussed
  writing

### Text documents

These plugins extend Vim's built-in functionality:

- **[vim-markdown](https://github.com/vim-pandoc/vim-rmarkdown)**: syntax
  highlighting, matching rules and mappings for [the original
  Markdown](http://daringfireball.net/projects/markdown/) and extensions.

- **[vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)**: generate
  table of contents for Markdown files.

- **[vim-pandoc](https://github.com/vim-pandoc)**: integrate with
  [pandoc](https://johnmacfarlane.net/pandoc) for a comfortable writing
  environment

### Data files

- **[vim-json](https://github.com/elzr/vim-json)**: distinct highlighting for
  keywords versus values, uses Vim's conceal to hide JSON functionality.

- **[vim-jdaddy](https://github.com/tpope/vim-jdaddy)**: maps `aj` and friends
  to work with JSON files.

- **[csv.vim](https://github.com/chrisbra/csv.vim)**: manipulate column data in
  character delimited files


### Vim utilities

- **[NrrwRgn](https://github.com/chrisbra/NrrwRgn)**: make a region
  inaccessible to focus attention on another region. This is a dependency for a
  few other plugins.

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

## Managing Plugins and Packages

### Adding plugins

Most of the scripts on the [Vim website](https://www.vim.org/scripts) are
plugins. To add a new plugin:

1. Clone the repository to `~/.vim/pack/<respository-name>start`. For example:

```sh
mkdir -p ~/.vim/pack/vim-example/start
cd ~/.vim/pack/vim-example/start
git clone https://example.com/example/vim-example
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

4. Commit the changes to the repository.

```sh
git commit -m "Add vim-example plugin"
```

### Adding packages

Native Vim packages have `start` and `opt` directories, so there is not a need
to make new directories. Replace the first step with:

```sh
cd ~/.vim/pack
git clone https://example.com/example/vim-example
```

From here, follow the steps in the [previous section](#adding-plugins).

### Updating plugins or packages

To update an individual plugin or package, use the normal Git command to pull
the latest version:

```sh
cd ~/.vim/pack/vim-example/start/vim-example
git pull
```

Beginning with version 1.8.2, Git provides a subcommand to update all submodules
in a repository. To update all plugins and packages (which are really
submodules), type:

```sh
cd ~/.vim
git submodule update --recursive --remote
```

## Future Plans

Here are things I intend to do, with higher priority items towards the top:

- [ ] Make an "essential" branch to hold configuration files and very few
  packages. This branch would target people working on configuration files.
  These people want a powerful text editing environment, but don't need
  specialized plugins.

- [ ] Split `vimrc` into focused files. Currently, the file is too large to
  quickly located settings. Some settings, like the `j` -> `gj` mapping, should
  be in their own plugin.

- [ ] List and describe the included plugins. This would help new users learn
  about the functionality in this distribution.

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

## Contacting the Maintainer

There are a few ways to get in touch with me:

- File issues on GitHub as suggested in the [previous section](#contributing)

- Send an email to axs @ sdf.org.

- Send a direct message to me on Twitter @andrewjstryker

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

* [Git Pro](https://git-scm.com/book/en/v2) is the Git reference on the Git
  homepage. The chapter on
  [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) is
  particularly helpful.

## License
