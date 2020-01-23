" Basic Settings
syntax on
set number
set ignorecase
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
autocmd FileType make setlocal noexpandtab
set termwinsize=10x0
set autoread
set splitright
set clipboard=unnamed
set backspace=2
set hls
set ic
let mapleader=","
nnoremap <CR> :noh<CR><CR>

if has("syntax")
 syntax on
endif

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'udalov/kotlin-vim'
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'stephpy/vim-yaml'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2 " turn on bottom bar 
" nmap
nmap <leader>nerd :NERDTreeToggle<CR>
nmap <leader>term :below term<CR>
" for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }
" colorscheme
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None
" nerdtree
let NERDTreeShowHidden=1
" vim-go
let g:go_fmt_command="goimports"
let g:go_list_type="quickfix"
let g:go_addtags_transform="camelcase"
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1

