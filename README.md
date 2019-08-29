# Vim Configuration

You probably **don't** want to clone this repository. I'm somewhat obsessive
about my editing environment. I need an environment that's easy to synchronize
across a heterogeneous set of computers. I want an environment that supports my
day-to-day work, but not one with lots of great packages that I rarely use. In
summary, I made this for me, not you.

However, you might be interested in using this project as a template for
managing your own Vim environment. Explore this repository to see how to use:

* Native Vim package management. Beginning in version 8, Vim supports a package
  management that is conceptually similar to Tim Pope's excellent
  [Pathogen](https://github.com/tpope/vim-pathogen).

* [Git submodules](https://git-scm.com/docs/git-submodule). Git supports
  managing external dependencies that are also git repositories. That is exactly
  how we treat each of the plugins. We want to manage which version of a plugin
  we are using. We otherwise don't care about the development path of a plugin.

Also, I explain which packages I use and, in some cases, which popular
packages I don't use.

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Included Packages](#included-packages)
  * [Interface](#interface)
  * [OS Utilities](#os-utilities)
  * [Editing tools](#editing-tools)
  * [Text Documents](#text-documents)
  * [Data files](#data-files)
  * [Extra file type support](#extra-file-type-support)
  * [Programming](#programming)
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

<!--
Here's what I need in my Vim configuration:

- Looks good. If I'm going to stare at a screen, let's put some effort into
  making it look good.

- Loads quickly. Vim is a test editor. Not an IDE or operating system (e.g.,
  emacs). I want to quickly cycle through opening, editing, and closing files.

- Provides sensible configuration. I don't want to tweak settings as part of
  a workflow. The more time I spend messing with Vim, the less I get done.

- Supports *light* programming tasks.

- Adapts to environment. There's no need to load a `git` support if you don't
  have `git` installed.

-->

### Interface

- [**vim-colors-solarized**](https://github.com/altercation/vim-colors-solarized):
  [the most important and best color scheme
  ever.](https://observer.com/2015/02/meet-the-man-behind-solarized-the-most-important-color-scheme-in-computer-history/).

- [**vim-stay**](https://github.com/zhimsel/vim-stay): automated view session
  creation and restoration whenever editing a buffer, across Vim sessions and
  window life cycles. This plugin keeps your place as you jump around files
  without requiring you to do anything after configuring your vimrc.

- [**goyo.vim**](https://github.com/junegunn/limelight.vim): distraction free
  writing. This plugin removes status bars and numbering when you want focus.

- [**limelight.vim**](https://github.com/junegunn/limelight.vim): hyper-focussed
  writing. This is mostly useful as a compliment to Goyo.

- [**FastFold**](https://github.com/Konfekt/FastFold): speed-up automatic folds.

### OS Utilities

Extend Vim's interface for working with the host operating system:

- [**NERDTree**](https://github.com/scrooloose/nerdtree): explore the
  filesystem and open files/directories

- [**nerdtree-git-plugin**](//github.com/Xuyuanp/nerdtree-git-plugin): NERDTree
  plugin that shows git status

### Editing tools

- [**supertab****](https://github.com/ervandew/supertab): allows you to use
  <kbd>Tab</kbd> for all your insert completion needs.

- [**gundo.vim**](https://github.com/sjl/gundo.vim): traverse Vim's undo-tree.

- [**multiple-cursors**](https://github.com/terryma/vim-multiple-cursors): edit
  multiple text objects at once.

- [**tabular**](https://github.com/godlygeek/tabular): align text into tables.

### Text Documents

These plugins extend Vim's built-in support for editing text documents:

- [**LaTeX-Box**](https://github.com/LaTeX-Box-Team/LaTeX-Box): lightweight
  support for editing LaTeX files, including compilation with `latexmk`,
  completion commands, table of contents for navigating large files, and more.

- [**vim-markdown**](https://github.com/vim-pandoc/vim-rmarkdown): syntax
  highlighting, matching rules and mappings for [the original
  Markdown](https://daringfireball.net/projects/markdown/) and extensions.

- [**vim-markdown-toc**](https://github.com/mzlogin/vim-markdown-toc): generate
  table of contents for Markdown files.

I'm **not** using the following popular and excellent plugin:

- [**vim-pandoc**](https://github.com/vim-pandoc): integration with
  [pandoc](https://johnmacfarlane.net/pandoc), a system for a comfortable writing
  environment. However, this plugin only makes senses if you regularly use
  Pandoc or want a WYSIWYG environment for editing semi-structured text file.

### Data files

- [**vim-json**](https://github.com/elzr/vim-json): distinct highlighting for
  keywords versus values, uses Vim's conceal to hide JSON functionality.

- [**vim-jdaddy**](https://github.com/tpope/vim-jdaddy): maps `aj` and friends
  to work with JSON files.

- [**csv.vim**](https://github.com/chrisbra/csv.vim): manipulate column data in
  character delimited files

### Extra file type support

Plugins with better support for certain file types:

- [**jq.vim**](//github.com/vito-c/jq.vim): highlighting
  [`jq`](https://stedolan.github.io/jq/manual/) files. `jq` is an excellent
  utility for manipulating JSON files.

- [**Dockerfile.vim**](https://github.com/ekalinin/Dockerfile.vim): better
  syntax file support plus snippets.

### Programming

Plugins for a better programming experience:

- [**SimplyFold**](https://github.com/tmhedberg/SimpylFold): better folding for
  Python files

- [**Syntastic**](https://github.com/vim-syntastic/syntastic.): a syntax
  checking plugin that runs files through external syntax checkers.

- [**Nvim-R**](https://github.com/jalvesaq/Nvim-R): editing environment and
  interactive interpreter interface for R.

- [**indentpython**](https://github.com/vim-scripts/indentpython.vim): conform
  Python file indenting with PEP 8

<!--
Describe the plugin that I'm **not** using.
-->

### Vim utilities

- [**NrrwRgn**](https://github.com/chrisbra/NrrwRgn): make a region
  inaccessible to focus attention on another region. This is a dependency for a
  few other plugins.

- [**vim-tmux-focus-events**](https://github.com/tmux-plugins/vim-tmux-focus-events):
  patch for broken `FocusGained` and `FocusLost` autocommand events in terminal
  vim

- [**tlib_vim**](): defines function common to several vim packages
  <!--
  - package 1
  - paktong 2
  -->

<!-- why denite? -->

## Installation

To install, you need to clone this repository and its
[submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules#Cloning-a-Project-with-Submodules)
into your `~/.vim` directory:

```sh
git clone --recursive https://github.com/andrewjstryker/vim-configuration.git ~/.vim
```

Optionally, move your `.vimrc` to `.vimrc.after`:

```sh
mv ~/.vimrc ~/.vimrc.after
```

Note: `vim` will source `~/.vim/vimrc` and this file will source your
`.vimrc.after` file.

## Managing Plugins and Packages

You will need to run a few `git submodule` commands to update packages:

```sh
git submodule foreach git checkout master # otherwise the submodule might not be on a branch
git submodule foreach git pull # get the latest commit for each package
```


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

- File issues on GitHub as suggested in the [previous section**](#contributing)

- Send an email to axs @ sdf.org.

- Send a direct message to me on Twitter @andrewjstryker

## References

Here are a few places to learn more about Vim scripting, plugins/packages, and Git:

- Doug Black's [A Good Vimrc**](https://dougblack.io/words/a-good-vimrc.html) blog
  article contains quite a bit of good advice on how to write a good vimrc file.

- [VimAwesome**](https://vimawesome.com) has a superb interface to Vim plugins.

- [Learn Vimscrtip the Hard Way**](https://learnvimscriptthehardway.stevelosh.com/)

- [Vim: So long Pathogen, hello native package
  loading](https://shapeshed.com/vim-packages/) nicely explains how Vim's native
  package management system works. The explanation is not as terse as the
  documentation that's found via `:help packages`.

* [Git Pro](https://git-scm.com/book/en/v2) is the Git reference on the Git
  homepage. The chapter on
  [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) is
  particularly helpful.

## License
