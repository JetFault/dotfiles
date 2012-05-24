set number
set tabstop=4
set shiftwidth=4
set backspace=2
syntax on
set pastetoggle=<F2>
set incsearch
set ignorecase
set autoindent
set smartindent
inoremap jj <Esc>`^
filetype plugin indent on
imap <C-w><C-w> <Esc><C-w><C-w>

set t_Co=256

cmap w!! w !sudo tee >/dev/null %

autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 softtabstop=2
