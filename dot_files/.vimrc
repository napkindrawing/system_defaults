set background=dark
syntax on
set nohlsearch

" defaults for everything
set autoindent
set backspace=indent,eol,start     " yeah.
set laststatus=2                   " always
set nostartofline                  " yeah, sure
set ruler                          " always show ruler
set showcmd                        " tell me what i'm doing
set showmatch                      " where'd the opening ')' go?
set showmode                       " where am i?
set shiftwidth=4
set ts=4
set expandtab
set shiftround
set textwidth=0                    " wrapping
set dir=~/tmp
set history=1000
set noautochdir

" fix messed up backspace!
set t_kb=^V<BS>
fixdel

au BufNewFile,BufRead *.phtml set ft=php  " vim gets confused, i use
                                          " .phtml for php
au BufNewFile,BufRead *.priv set ft=php   " vim gets confused, i use
                                          " .priv for php
au BufNewFile,BufRead *.tmpl set ft=html  " vim gets confused, i use
                                          " .priv for php
au BufNewFile,BufRead *.jsp set shiftwidth=2
au BufNewFile,BufRead *.jsp set textwidth=0
au BufNewFile,BufRead *.html set textwidth=0
au BufNewFile,BufRead *.html set shiftwidth=2
au BufNewFile,BufRead *.html set ts=2
au BufNewFile,BufRead *.xml set shiftwidth=2
au BufNewFile,BufRead *.xml set textwidth=0
au BufNewFile,BufRead *.css set shiftwidth=2

" autoindent for c, html, perl, and php
au BufNewFile,BufRead *.priv,*.pl,*.cgi,*.php*,*.*html*,*.c set autoindent shiftwidth=4 ts=4
au BufNewFile,BufRead *.js,*.tmpl,*.css set autoindent

" cvs commit messages get wrapped at 68 and tabs get expanded
au BufNewFile,BufRead /tmp/cvs* set tw=68 et

au BufNewFile,BufRead *.xhtml set syntax=html

set nowrap
set number
autocmd FileType perl :noremap K :!perldoc <cword> <bar><bar> perldoc -f <cword><cr>
