set nocompatible

" -------- VUNDLE START --------
filetype off                   
let g:vundle_default_git_proto = 'git'
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
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-cucumber'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'tomasr/molokai'
Bundle 'editorconfig/editorconfig-vim'
filetype plugin indent on
" -------- VUNDLE END --------

syntax on
set number
set pastetoggle=<F2>
set incsearch
set ignorecase
set smartcase " Search case smartly

" Where mah search at?
set hlsearch

" Sit back and use that Magic Mouse Scrolling
set mouse=a

" jj stay in same cursor position
inoremap jj <Esc>`^

" Save with CTRL-S so I don't lose efficiency 
" when reaching for mouse to test HTML
" imap <C-S> <C-\><C-O>:w<cr> 
" imap <c-s>  <C-O>:w<cr> 
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Switching Windows easier
imap <C-w><C-w> <Esc><C-w><C-w> 

" Write file as sudo
cmap w!! w !sudo tee >/dev/null %

" -------- Spacing START --------
set autoindent
set smartindent

set shiftwidth=2
set softtabstop=2
set tabstop=2
set backspace=2
set expandtab
" autocmd Filetype ruby setlocal ts=2 sw=2 sts=2
" autocmd Filetype javascript setlocal ts=2 sw=2 sts=2
autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype css setlocal ts=4 sw=4 sts=4
autocmd Filetype scss setlocal ts=4 sw=4 sts=4
autocmd Filetype sass setlocal ts=4 sw=4 sts=4
autocmd Filetype less setlocal ts=4 sw=4 sts=4
autocmd FileType make setlocal noexpandtab
" set smarttab
" -------- Spacing END --------

" ------- Cursor Line/Column START -------
augroup CursorLine
  au!
  "au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
  au WinLeave * setlocal nocursorline nocursorcolumn
augroup END
:hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
"Ctrl + \ + l
:nnoremap <Leader>l :set cursorline! cursorcolumn!<CR>
" ------- Cursor Line/Column END -------

"set clipboard=unnamed

" -------- Fold START --------
"function! JavaScriptFold() 
    "setl foldmethod=syntax
    "setl foldlevelstart=5
	"setl nofoldenable
    "syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    "function! FoldText()
        "return substitute(getline(v:foldstart), '{.*', '{...}', '')
    "endfunction
    "setl foldtext=FoldText()
"endfunction
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen

"set foldmethod=syntax
"set foldlevelstart=20
" -------- Javascript Fold END --------


" -------- Color START --------
let &t_Co=256
colorscheme molokai

" Matching parents easy to know which is under cursor
highlight MatchParen cterm=bold ctermfg=cyan
" Transparent backgrounds
hi Normal ctermfg=252 ctermbg=none

hi SyntasticError ctermfg=252 ctermbg=240 guifg=#d0d0d0 guibg=#585858
" -------- Color END --------

" -------- TagList START -------
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
" -------- TagList END -------

let g:Powerline_symbols = 'fancy'
set laststatus=2

" --- Syntastic START ---
nnoremap <F1> :SyntasticToggleMode<cr>
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
" --- Syntastic END ---
