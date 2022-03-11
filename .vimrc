set nocompatible              " be iMproved, required

" enable syntax
syntax on

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

"Generic programming support
"Plugin 'vim-syntastic/syntastic'
Plugin 'jakedouglas/exuberant-ctags'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'Townk/vim-autoclose'

"Theme / Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Completion window showing
" menu: show all possible completions
" menuone: show even when there is a single option
" preview: show extra info in the preview window
set completeopt=menuone,menu,preview


" enable exrc to get .vimrc from current directory, if present
set exrc
set secure

" enable elite mode. No ARRRRROWS !!
let g:elite_mode = 1

" line numbers
set number
set ruler

"always display last line
set laststatus=2

"enable highlighting of current line
set cursorline


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

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_include_dirs = ["trca/libs"]
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_python_pylint_post_args="--max-line-length=120"
"let g:syntastic_python_flake8_args='--ignore=W291,W293,E251,E265,E302,E305,E501,E225,E722'

" Ultisnip configuration.
" change the expand trigger to something else if using 'YouCompleteMe'
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" YCM
"let g:ycm_confirm_extra_conf = 0 " Don't ask for confirmation before loading a non-global ycm_extra_conf file. NOTE: leaving this at 1 may be helpful to make sure that the correct file is being loaded
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files = 1
"" only show completion as a list instead of a sub-window
"set completeopt-=preview
"" start completion from the first character
"let g:ycm_min_num_of_chars_for_completion=1
"" complete syntax keywords
"let g:ycm_seed_identifiers_with_syntax=1

"nnoremap ,g :YcmCompleter GoToDeclaration <CR>
"nnoremap ,G :YcmCompleter GoToDefinition <CR>
let g:loaded_youcompleteme = 1

" toggle buffers
nnoremap <F4> :b#<CR>

nnoremap <space> <C-d>
nnoremap - <C-u>


" Move line by line even when the line is wrapped
"map j gj
"map k gk

set t_BE=
