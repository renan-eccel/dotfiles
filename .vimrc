set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
" linting
Plugin 'w0rp/ale'
Plugin 'nvie/vim-flake8'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'xuhdev/vim-latex-live-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" redind Leader key
let mapleader = ","

" better split
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" python PEP 8 identation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" .tex file indentation
au BufNewFile,BufRead *.tex
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" other files identation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" set encoding
set encoding=utf-8

" YouCompleteMe configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python syntax highlight
let python_highlight_all=1
syntax on

" show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" colorscheme
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
set termguicolors

" line numbering
set ruler
set nu
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" system clipboard
set clipboard=unnamed
set pastetoggle=<F2>

" moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" set color column to limit text width
au BufNewFile,BufRead *.py
 \ set tw=79 |
 \ set colorcolumn=80 |
 \ highlight ColorColumn ctermbg=233 |

" activate CtrlP buffer power
nnoremap <Leader>b :CtrlPBuffer<CR>

"toggle nerdtree
nnoremap <F2> :NERDTreeToggle<cr>

"toggle the cursorline while in Insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" insert a line withou entering Insert mode
nnoremap <CR> i<CR><Esc>

"=========================================================================
" latex
"=========================================================================
" Set the vim option updatetime to a smallet value, which is the fequency
" that the output PDF is updated
autocmd Filetype tex setl updatetime=1

" Set the PDF viewer. Using Preview.
let g:livepreview_previewer = 'okular'

" set color column to limit text width
au BufNewFile,BufRead *.tex
 \ set spell spelllang=en_us |
 \ set colorcolumn=80 |
 \ highlight ColorColumn ctermbg=233 |
