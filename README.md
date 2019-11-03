# lingo.vim
NEW Vim Syntax Highlighting for LINGO 18

## Start
1. Copy [`lingo.vim`](./lingo.vim) to `runtimepath/syntax/` directory (normally `~/.vim/syntax/`);
2. Copy the following code into `runtimepath/filetype.vim` file (normally `~/.vim/filetype.vim`), or `~/.vimrc` file.
```vim
augroup filetypedetect
	autocmd BufNewFile,BufRead *.lng setfiletype lingo
	autocmd BufNewFile,BufRead *.ltf setfiletype lingo
augroup END
```
