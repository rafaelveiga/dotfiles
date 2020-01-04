call plug#begin('~/.nvim/plugged')

" Themes
Plug 'dracula/vim', { 'as': 'dracula' } " colorscheme
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " auto complete
Plug 'jiangmiao/auto-pairs' " auto close brackets
Plug 'vim-airline/vim-airline' " bottom bar
Plug 'scrooloose/nerdtree' " file browser
Plug 'mxw/vim-jsx' " syntax hl
Plug 'pangloss/vim-javascript' " syntax hl
Plug 'Yggdroot/indentLine' " indent lines
Plug 'kien/ctrlp.vim' " file browser
Plug 'tpope/vim-fugitive' " git plugin

call plug#end()

" Tab Settings
set autoindent expandtab tabstop=2 shiftwidth=2

" Theme Setting
colorscheme dracula
syntax on
let $TERM="xterm-256color"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Line Numbers
set number
set relativenumber

" Font
autocmd VimEnter * GuiFont Fira Code:h15:cANSI:qDRAFT
set encoding=utf-8

" > CtrlP.vim
" Ctrl + P toggle
map <C-p> :CtrlP<CR>
" Ignore common folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" Set working path mode
let g:ctrlp_working_path_mode = 'rw'

" > NERDTree
" NERDTree Ctrl + N toggle
map <C-n> :NERDTreeToggle<CR>
" Toggle NERDTree on folder on nvim open
autocmd VimEnter * NERDTree C:/Code
" Allow NERDTree to change Vim working directory
let g:NERDTreeChDirMode = 2

" indentLine config
let g:indentLine_char = '│' 
