call plug#begin('~/.vim/plugged')

" Themes
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " auto complete
Plug 'jiangmiao/auto-pairs' " auto close brackets
Plug 'vim-airline/vim-airline' " bottom bar
Plug 'scrooloose/nerdtree' " file browser
Plug 'mxw/vim-jsx' " syntax hl
Plug 'pangloss/vim-javascript' " syntax hl
Plug 'Yggdroot/indentLine' " indent lines
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'kien/ctrlp.vim' " file browser
Plug 'tpope/vim-fugitive' " git plugin
Plug 'TaDaa/vimade' " dim panels
Plug 'reewr/vim-monokai-phoenix'
Plug 'chemzqm/vim-jsx-improve'
Plug 'mattn/emmet-vim'

call plug#end()

" Tab Settings
set autoindent expandtab tabstop=2 shiftwidth=2

" Theme Setting
colorscheme monokai-phoenix
syntax on
"set termguicolors

" Line Numbers
set number

" Font
set encoding=utf-8

" clipboard
set clipboard=unnamedplus

" Node path for coc.nvim
let g:coc_node_path = $HOME.'/.nvm/versions/node/v15.8.0/bin/node'

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
autocmd VimEnter * NERDTree ~/code
" Allow NERDTree to change Vim working directory
let g:NERDTreeChDirMode = 2
" show hidden files
let NERDTreeShowHidden = 1

" indentLine config
let g:indentLine_char = '│' 

" Show tabs on airline
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#enabled = 1

" Close current buffer and move to new tab
command Close :b# | bd#

set nowrap
set colorcolumn=80
