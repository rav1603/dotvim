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
colorscheme jellybeans
