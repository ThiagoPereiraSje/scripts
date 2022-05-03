"---------------------------------------------------
" Vim Settings
"---------------------------------------------------
" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable line numbers
set number

" Enable Mouse
set mouse=a

" Configure Indentation
"---------------------------------------------------
set tabstop=2             " How many columns of whitespace a \t is worth
set shiftwidth=2	        " How many columns of whitespace a level of indentation is worth
set expandtab		          " Use spaces when tabbing

" Configure highlight
"---------------------------------------------------
syntax on                 " Enable syntax highlighting
set background=dark   	  " dark or light
set cursorline            " Highlight cursor line underneath the cursor horizontally
" set cursorcolumn        " Highlight cursor line underneath the cursor vertically


" Configure search
"---------------------------------------------------
set hlsearch    	        " Enable highlight search
set incsearch             " While searching though a file incrementally highlight matching characters as you type
set ignorecase            " Ignore capital letters during search
set smartcase             " This will allow you to search specifically for capital letters


" Configure Netrw
"---------------------------------------------------
let g:netrw_winsize=25		" Set window size
let g:netrw_liststyle=3     " Set view style to three mode


" Configure wildmenu
"---------------------------------------------------
set wildmenu                        " Enable auto completion menu after pressing TAB
set wildmode=list:longest           " Make wildmenu behave like similar to Bash completion
set wildignore=*.docx,*.pdf,*.xlsx  " Wildmenu will ignore files with these extensions


" Configure split
"---------------------------------------------------
set splitbelow            " Always split below
set splitright            " Always split right


" File type detection
"---------------------------------------------------
filetype on               " Enable type file detection
filetype plugin on        " Enable plugins and load plugin for the detected file type
filetype indent on        " Load an indent file for the detected file type


"---------------------------------------------------
" Plugin Loader
"---------------------------------------------------
" Set the runtime path to include Plug and initialize
set rtp+=~/.vim/bundle/vim-plug

" Download plug-ins to the ~/.vim/plugged/ directory
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}   " Autocomple Intellisense
Plug 'sheerun/vim-polyglot'                       " Syntax highlight
Plug 'joshdick/onedark.vim'					              " Color scheme
Plug 'jiangmiao/auto-pairs'			                  " Provides automatic pair completion
Plug 'dense-analysis/ale'                         " Provides linting syntax checking and semantic errors
Plug 'pbrisbin/vim-mkdir'                         " Automatically create any directory before writing
Plug 'vim-airline/vim-airline'                    " Provides statusline on vim window
Plug 'vim-airline/vim-airline-themes'             " Provides themes for statusline

call plug#end()


"---------------------------------------------------
" Plugin Settings
"---------------------------------------------------
colorscheme onedark       " Your favorite color scheme's name


"---------------------------------------------------
" Map Keyboard Shortcut
"---------------------------------------------------


" Toggle file explorer
nnoremap <F12> :Lexplore<CR>
nnoremap <c-f> :Lexplore %:p:h<CR>


" Press the space bar to type the : character in command mode
nnoremap <space> :

" Map jj shortcut to esc
inoremap jj <esc>
nnoremap <c-k> :w<CR>

" Switch on split windows
nnoremap <c-down>     <c-w>j
nnoremap <c-up>       <c-w>k
nnoremap <c-left>     <c-w>h
nnoremap <c-right>    <c-w>l
tnoremap <c-down>     <c-w>j
tnoremap <c-up>       <c-w>k
tnoremap <c-left>     <c-w>h
tnoremap <c-right>    <c-w>l


" Tab Terminal shortcut
" <C-\> Send a command to the terminal
nnoremap   <S-t>     :tab term<CR>
nnoremap   <S-left>  :tabp<CR>
nnoremap   <S-right> :tabn<CR>
tnoremap   <S-left>  <c-w>gT
tnoremap   <S-right> <c-w>gt
