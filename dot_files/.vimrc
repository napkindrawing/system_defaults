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

au BufNewFile,BufRead *.html,*.rb,*.js,*.css,*.scss,*.xml set ts=2 sw=2 expandtab 
au BufNewFile,BufRead *.php set ts=8 sw=8 noexpandtab
au BufNewFile,BufRead *.god set ft=ruby

set nowrap
set number
autocmd FileType perl :noremap K :!perldoc <cword> <bar><bar> perldoc -f <cword><cr>

colorscheme desert

set whichwrap+=<,>,h,l,[,]
