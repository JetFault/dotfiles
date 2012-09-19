set nocompatible

" -------- VUNDLE START --------
filetype off                   
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'            " Vundle
Bundle 'Lokaltog/vim-powerline'   " Powerline
Bundle 'tpope/vim-fugitive'       " Git
Bundle 'bilalq/vim-javascript'    " Javascript Indentation
filetype plugin indent on
" -------- VUNDLE END --------

syntax on
set number
set pastetoggle=<F2>
set incsearch
set ignorecase
set smartcase

" jj stay in same cursor position
inoremap jj <Esc>`^
" Switching Windows easier
imap <C-w><C-w> <Esc><C-w><C-w>

" Write file as sudo
cmap w!! w !sudo tee >/dev/null %

" -------- Spacing START --------
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set backspace=2
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2
" -------- Spacing END --------


" -------- Javascript Fold START --------
function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=5
	setl nofoldenable
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
" -------- Javascript Fold END --------


" -------- Color START --------
let &t_Co=256
" -------- Color END --------
