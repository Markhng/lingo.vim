# lingo.vim
lingo.vim is a new Vim Syntax Highlighting for LINGO (the language of optimization modeling software for linear, nonlinear, and integer programming).

The new syntax rule is based on [LINGO 18.0 user manual](https://www.lindo.com/downloads/PDF/LINGO.pdf).

## Installation instructions

It is recommended to install the plugin using a plugin manager. Pick your favorite, here are
instructions for some common ones.

### Using [vim-plug]

Add a new plugin line to your `.vimrc`:

```vim
Plug 'Markhng/lingo.vim'
```

Rerun `vim` and update your bundles:

```vim
:PlugInstall
```

### Using [vundle]

Add a new plugin line to your `.vimrc`:

```vim
Plugin 'Markhng/lingo.vim'
```

Rerun `vim` and update your bundles:

```vim
:PluginInstall!
```

[vim-plug]: https://github.com/junegunn/vim-plug
[vundle]: https://github.com/gmarik/vundle

### Manually
Just copy all the relevant portions in this project into your `~/.vim` directory.