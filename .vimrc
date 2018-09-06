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
colorscheme evening
