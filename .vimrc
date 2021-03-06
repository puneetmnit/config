set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

"c++ auto-complete
Plugin 'Valloric/YouCompleteMe'
Bundle 'LucHermitte/lh-vim-lib'
Bundle 'LucHermitte/lh-tags'
Bundle 'LucHermitte/lh-dev'
Bundle 'LucHermitte/lh-brackets'
Bundle 'LucHermitte/searchInRuntime'
Bundle 'LucHermitte/mu-template'
Bundle 'tomtom/stakeholders_vim'
Bundle 'LucHermitte/lh-cpp'


" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"ycm plugin file
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"lh-cpp
imap <C-J>      <Plug>MarkersJumpF
map <C-J>      <Plug>MarkersJumpF
imap <C-K>      <Plug>MarkersJumpB
map <C-K>      <Plug>MarkersJumpB
imap <C-<>      <Plug>MarkersMark
nmap <C-<>      <Plug>MarkersMark
xmap <C-<>      <Plug>MarkersMark

"git
autocmd FileType gitcommit spell textwidth=72 

" enable exrc to get .vimrc from current directory, if present
set exrc
set secure

" enable syntax
syntax on

" colorscheme
colo darkblue

"indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set backspace=indent,eol,start

" set autoindent
"set copyindent

"search
set incsearch
set hlsearch

"case
set infercase
set smartcase

" line numbers
set nu

" mouse
set mouse=a
set mousefocus

" no audio bell
set visualbell

" column width
set colorcolumn=110

" Always set the current file directory as the local current directory
autocmd BufEnter * silent! lcd %:p:h

" Move line by line even when the line is wrapped
map j gj
map k gk

" remove trailing whitespaces                                                                                           
autocmd FileType c,cpp,h,hpp,py,sh autocmd BufWritePre <buffer> %s/\s\+$//e

" disable arrow movement. resize windows size                                                                           
if get(g:, 'elite_mode')                                                                                                
  nnoremap <Up>     :resize +2<CR>                                                                                      
  nnoremap <Down>   :resize -2<CR>                                                                                      
  nnoremap <Left>   :vertical resize +2<CR>                                                                             
  nnoremap <Right>  :vertical resize +2<CR>                                                                             
endif 
