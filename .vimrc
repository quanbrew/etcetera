set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set number
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
set listchars=tab:>-,trail:-
set showcmd " display incomplete commands
set showmode " display current modes


set shiftwidth=2
set tabstop=2
set softtabstop=2
" set smarttab
set shiftround " 缩进取整

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


" others
set backspace=indent,eol,start  " make that backspace key work the way it should
set whichwrap+=<,>,h,l

