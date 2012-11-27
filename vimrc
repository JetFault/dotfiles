set nocompatible

" -------- VUNDLE START --------
filetype off                   
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/matchit.zip'
Bundle 'gregsexton/MatchTag'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/taglist.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
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
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set smarttab
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

set foldlevelstart=20
" -------- Javascript Fold END --------


" -------- Color START --------
let &t_Co=256
" -------- Color END --------

" -------- TagList START -------
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
" -------- TagList END -------

let g:Powerline_symbols = 'fancy'
set laststatus=2
