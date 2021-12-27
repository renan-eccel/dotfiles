" -----------------------------------------------------------------------------
" => Moving around, searching and patterns
" -----------------------------------------------------------------------------

" Ignore case when using a search pattern
set ignorecase

" Override 'ignorecase' when pattern has upper case characters
set smartcase

" Open new split panes to right and bottom
set splitbelow
set splitright

" Number of screen lines to keep above and below the cursor. This will make
" some context visible around where you are working.
set scrolloff=15

" -----------------------------------------------------------------------------
" => Displaying text
" -----------------------------------------------------------------------------

" Number of lines used for the command-line
set cmdheight=1 "Not need with Powerline

" Show the line number for each line
set number

" Show the relative line number for each line
set relativenumber

" Show signcolumn
set signcolumn=yes

" -----------------------------------------------------------------------------
" => Syntax, highlighting and spelling
" -----------------------------------------------------------------------------

" Enables italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Enable syntax highlight
syntax enable

" Enable 256 colors
set t_Co=256
set termguicolors

" The background color brightness
set background=dark

" Set color scheme
packadd! dracula
let g:dracula_colorterm = 0
colorscheme dracula

" Type of file; triggers the FileType event when set
filetype plugin on
filetype indent on

" Highlight the screen line of the cursor
set cursorline

" Columns to highlight
set colorcolumn=80

" -----------------------------------------------------------------------------
" => Messages and info
" -----------------------------------------------------------------------------

" Show cursor position below each window
set ruler

" Hide -- INSERT --
set noshowmode
" -----------------------------------------------------------------------------
" => Editing text
" -----------------------------------------------------------------------------

" Maximum number of changes that can be undone
set undolevels=1000

" Specifies what <BS>, CTROL-W, etc. can do in Insert mode
set backspace=indent,eol,start

" When inserting a bracket, briefly jump to its match
set showmatch

" -----------------------------------------------------------------------------
" => Tabs and indenting
" -----------------------------------------------------------------------------

" Number of spaces a <Tab> in the text stands for
set tabstop=4

" Number of spaces used for each step of (auto)indent
set shiftwidth=4

" A <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab

" Expand <Tab> to spaces in Insert mode
set expandtab

" Automatically set the indent of a new line
set autoindent

" Do clever autoindenting
set smartindent

" -----------------------------------------------------------------------------
" => Reading and writing files
" -----------------------------------------------------------------------------

" Automatically read a file when it was modified outside of Vim
set autoread

" -----------------------------------------------------------------------------
" => Command line editing
" -----------------------------------------------------------------------------

" How many command lines are remembered
set history=100

" List of patterns to ignore files for file name completion
set wildignore=*.o,~*,*.pyc,bower_components,node_modules

" Command-line completion shows a list of matches
set wildmenu

" -----------------------------------------------------------------------------
" => Others
" -----------------------------------------------------------------------------

" This beauty remembers where you were the last time you edited the file, and
" returns to the same position. Seriously, it's awesome.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2 colorcolumn=
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType vim setlocal shiftwidth=2 tabstop=2
set backupcopy=yes

" Defines ; as leader
map ; <Leader>

" neovim init.vim file cmd
" runs python3 for neovim from a specific env
" should resolve the need for neovim in each new python env when using nvim
" add the following to your init.vim file
let g:python3_host_prog = '/usr/local/Caskroom/miniconda/py38_4.10.3/python3'
