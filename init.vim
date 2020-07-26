" Basic Settings
syntax on
set encoding=utf8
set number
set ignorecase
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set hidden
set list
set listchars=tab:\|\ ,
set autoread
set splitright
set splitbelow
set backspace=2
set cursorline
set hls
set ic
set mouse=a
set belloff=all
let mapleader=" "
let maplocalleader=" "
let g:terminal_scrollback_buffer_size = 100000
map <C-y> "+y"
nnoremap <silent> <CR> :noh<CR><CR>
nnoremap <C-d> :bp\|bd #<CR>
nnoremap <C-Up>    <C-w>+
nnoremap <C-Down>  <C-w>-
nnoremap <C-Left>  <C-w><
nnoremap <C-Right> <C-w>>

if has("syntax")
 syntax on
endif

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'udalov/kotlin-vim'
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'stephpy/vim-yaml'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'hashivim/vim-hashicorp-tools'
Plugin 'hashivim/vim-terraform'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'schickling/vim-bufonly'
Plugin 'junegunn/seoul256.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'
Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plugin 'rhysd/git-messenger.vim'
Plugin 'vimlab/split-term.vim'
Plugin 'junegunn/vim-emoji'
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
" se: :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
set laststatus=2 " turn on bottom bar 
" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>nerd :NERDTreeToggle<CR>
" fzf
let g:fzf_buffers_jump=1
let g:fzf_layout = { 'down': '20%' }
nmap <leader>fl :Lines<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fb :Buffers<CR>
" for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }
" for make filetype
autocmd FileType make setlocal noexpandtab
" colorscheme
"let g:dracula_italic = 0
"colorscheme dracula
"highlight Normal ctermbg=None
let g:seoul256_background = 236
colo seoul256
" nerdtree
" let NERDTreeShowHidden=1
" vim-go
let g:go_fmt_command="goimports"
let g:go_list_type="quickfix"
let g:go_addtags_transform="camelcase"
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
" vim-terraform
let g:terraform_fmt_on_save=1
" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
" devicon
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1
let g:WebDevIconsOS = 'Darwin'
" term
"nmap <leader>term :bel sp 50 | resize 10 | terminal
" bufonly
nmap <leader>bd :BufOnly<CR>
" commentary
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine
" indentLine
autocmd! User indentLine doautocmd indentLine Syntax
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#616161'
" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" git-messenger
nmap <silent> gm <Plug>(git-messenger)
" move
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv
" google it
function! s:goog(pat, lucky)
  let q = '"'.substitute(a:pat, '["\n]', ' ', 'g').'"'
  let q = substitute(q, '[[:punct:] ]',
       \ '\=printf("%%%02X", char2nr(submatch(0)))', 'g')
  call system(printf('open "https://www.google.com/search?%sq=%s"',
                   \ a:lucky ? 'btnI&' : '', q))
endfunction
nnoremap <leader>? :call <SID>goog(expand("<cWORD>"), 0)<cr>
nnoremap <leader>! :call <SID>goog(expand("<cWORD>"), 1)<cr>
xnoremap <leader>? "gy:call <SID>goog(@g, 0)<cr>gv
xnoremap <leader>! "gy:call <SID>goog(@g, 1)<cr>gv
" split term
nmap <leader>term :10Term<CR>
" vim-emoji
set completefunc=emoji#complete
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

