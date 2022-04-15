" ██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗  ██╗███████╗██╗ ██████╗ 
" ██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗ ██║██╔════╝██║██╔════╝ 
" ██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗██║█████╗  ██║██║  ███╗
" ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚████║██╔══╝  ██║██║   ██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚███║██║     ██║╚██████╔╝
"   ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚══╝╚═╝     ╚═╝ ╚═════╝ 
"
" vim-plug intallation
" curl -fLo ~/.local/share/nvim/site/autoload/ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


" custom keymaps
" HJKL
noremap J 5j
noremap K 5k
noremap L g_
noremap H ^

" change ; and :
nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

" easier window navigation
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" exiting terminal mode
tnoremap <Esc> <C-\><C-n>


" general settings
" lines
set number relativenumber
set linebreak
set scrolloff=5

" search
set ignorecase smartcase

" set display of hex values
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

" indent width
set shiftwidth=4
set softtabstop=4
" auto indentation
set autoindent

" disable swap files
set noswapfile


" undo files
" create undo dir if doesn't exist
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

" use undo dir
set undofile undodir=~/.vim/undo-dir


" python
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'


" plugins
" disable polyglot for markdown
let g:polyglot_disabled = ['markdown']
" vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'dkarter/bullets.vim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'RRethy/vim-illuminate'
Plug 'lilydjwg/colorizer'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

" auto pairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<' : '>'})

" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" vim-illuminate
let g:Illuminate_highlightUnderCursor = 0

" latex
" start zathura preview window with :LLPStartPreview
let g:livepreview_previewer = 'zathura'

