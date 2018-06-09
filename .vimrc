set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set autochdir
set history=2048
set nobackup
set noswapfile
set autoread

set cursorline
set nowrap

set novisualbell
set noerrorbells

set list
set showbreak=↪\
set listchars=tab:→\ ,extends:›,precedes:‹,nbsp:␣,trail:·

set showcmd " display incomplete commands
set showmode " display current modes


" Ident settings
" http://linux-wiki.cn/wiki/zh-hans/Vim%E4%BB%A3%E7%A0%81%E7%BC%A9%E8%BF%9B%E8%AE%BE%E7%BD%AE
set smartindent
set smarttab
set shiftround

set hlsearch
set incsearch
set ignorecase
set smartcase


set completeopt=longest,menu
set wildmenu " show a navigable menu for tab completion
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class


set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn

" line number
" auto switch between relative and normal
set relativenumber number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber nonumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber number
augroup END


" others
set backspace=indent,eol,start  " make that backspace key work the way it should
set whichwrap+=<,>,h,l

" Shortcut Key Maps

let mapleader=" "

" <leader>n remove line number display
nmap <leader>n :set nonumber norelativenumber<CR>


" Paste mode
nmap <leader>p :set paste<CR>

" Force quit
nmap <leader>q :q!<CR>

" Write with sudo
" You must have nopassword permission
nmap <leader>w :w !sudo tee %<CR>

" commentary.vim
nmap <leader>/ <Plug>CommentaryLine
xmap <leader>/ <Plug>Commentary
omap <leader>/ <Plug>Commentary

" Toggle tagbar
nmap <leader>t :TagbarToggle<CR>

" GUI
" font is https://github.com/be5invis/Sarasa-Gothic
if has("gui_macvim")
  set guifont=Sarasa\ Term\ SC:h16
  set guioptions=
elseif has("gui_macvim")
  set guifont=Sarasa\ Term\ SC\ 12
endif

" Plugin

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'w0rp/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'easymotion/vim-easymotion'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'flazz/vim-colorschemes'
  Plug 'scrooloose/nerdtree'
  Plug 'majutsushi/tagbar'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'tpope/vim-sleuth'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  " Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
call plug#end()

" Airline
let g:airline_powerline_fonts = 1

" RAINBOW PARENTHESES
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'SteelBlue1'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'SteelBlue1'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'SteelBlue1'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'SteelBlue1'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Color scheme
syntax on
set t_Co=256
set background=dark
set cursorline
"colorscheme onehalfdark
"let g:airline_theme='onehalflight'
colorscheme gruvbox
" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Generate documentation tags automatically
" https://github.com/w0rp/ale#generating-vim-help-files
" Load all plugins now.
packloadall
" Load all of the helptags now, after plugins have been loaded.
silent! helptags ALL


