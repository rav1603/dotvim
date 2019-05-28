" Add this line to bashrc or zshrc
" alias tmux="TERM=screen-256color-bce tmux"
set t_Co=256
set nocompatible
" Transparetn bg
hi Normal ctermbg=none
" Easy to see visual selection
hi Visual term=reverse cterm=reverse guibg=Grey 


" Prevent VIM from clearing clipboard after exiting the VIM.
autocmd VimLeave * call system("xsel -ib", getreg('+'))filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

com! FormatJSON %!python -m json.tool

" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Plugins


" Color schemas
Plugin 'tomasr/molokai'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
" All of plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set nu
" *** Copy-paste
vmap <C-c> "+y
nmap <C-c> "+yiw
set ignorecase      " Makes searching easier...
set smartcase       " ...and smarter.
set incsearch       " Search in-time.
set hlsearch        " Highlight results.
" No highlight search results
map <leader>/ :nohlsearch<CR>
" Clear whitespaces
map <leader>cw :%s/\s\+$//e<CR>
set tabstop=4       " How big tab key is.
set softtabstop=4   " After how many columns tab has to stop.
set shiftwidth=4    " Autoidentation?
set expandtab	" Tab to spaces
set smartindent     " Auto-indent for a c-like
set backspace=indent,eol,start " Make Backspace even in eol like situations.
set copyindent      " Take indentation from last line
colorscheme jellybeans
