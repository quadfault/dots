set nocompatible
filetype indent plugin on
syntax on

set autoindent
set ruler
set laststatus=2

"set shiftwidth=4
"set softtabstop=4
"set expandtab

set nowrap
set sidescroll=1

set colorcolumn=120

autocmd BufNewFile,BufRead *.handlebars set filetype=html
autocmd BufNewFile,BufRead *.hbs set filetype=html
autocmd BufNewFile,BufRead *.svg set filetype=xml
autocmd BufNewFile,BufRead *.lalrpop set filetype=rust

autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType xml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
autocmd FileType haskell setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType rust setlocal colorcolumn=100
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 noexpandtab
autocmd FileType javascript setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType typescript setlocal shiftwidth=4 softtabstop=4 expandtab
