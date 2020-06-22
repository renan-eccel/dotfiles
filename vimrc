set nocompatible              " required
filetype off                  " required

" TO USE THIS CONFIGURATION IN NEOVIM YOU NEED TO FOLLOW THE STEPS
" DENOTE AT :h nvim-from-vim

" TO USE THE linters for python and latex semantic checkers you need
" to install them first
" sudo apt install flake8 (for python)
" sudo apt install chktex (for tex)


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tpope/vim-sensible' " Defaults everyone can agree on
Plugin 'tmhedberg/SimpylFold' 
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe' 
Plugin 'davidhalter/jedi-vim' " python autocompletion, goto, renaming, show docs
Plugin 'w0rp/ale' " linter, need to install tool for each language
Plugin 'morhetz/gruvbox' " colorscheme
Plugin 'scrooloose/nerdtree' " Tree file navigation
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'vim-airline/vim-airline' " status/tabline
Plugin 'machakann/vim-sandwich' " surround things with other things
Plugin 'lervag/vimtex' " latex integration
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plugin 'tpope/vim-repeat' " enable repeating supported plugin maps with '.'
Plugin 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
Plugin 'sirver/ultisnips' " - The ultimate snippet solution for Vim.
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" defining Leader key
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

" Enable copying to clipboard in ALL operations
set clipboard+=unnamedplus

" Enable folding with the spacebar
nnoremap <space> za

" other files indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" set encoding
set encoding=utf-8

" YouCompleteMe configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

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

" activate CtrlP buffer power
nnoremap <Leader>b :CtrlPBuffer<CR>

"toggle nerdtree
nnoremap <F2> :NERDTreeToggle<cr>

"toggle the cursorline 
set cul

" insert a line without entering Insert mode
nnoremap <CR> i<CR><Esc>
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

" ALE map next and previous warnings
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" YCM GetDoc
nmap <silent> <S-k> :YcmCompleter GetDoc<cr>

" Search for vissualy selected text
" https://vim.fandom.com/wiki/Search_for_visually_selected_text
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

"=========================================================================
" python
"=========================================================================
" set color column to limit text width
au BufNewFile,BufRead *.py
 \ set tw=79 |
 \ set colorcolumn=80 |
 \ highlight ColorColumn ctermbg=233 |

" python syntax highlight
let python_highlight_all=1
syntax on

" python PEP 8 identation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"=========================================================================
" Markdown
"=========================================================================
" set color column to limit text width
au BufNewFile,BufRead *.md
 \ set tw=79 |
 \ set colorcolumn=80 |
 \ highlight ColorColumn ctermbg=233 |

"=========================================================================
" latex
"=========================================================================
" Set the vim option updatetime to a smallet value, which is the fequency
" that the output PDF is updated
autocmd Filetype tex setl updatetime=1

" Set the PDF viewer. Using okular.
let g:livepreview_previewer = 'okular'

" set spellchecking
" set color column to limit text width
au BufNewFile,BufRead *.tex
 \ set spell spelllang=pt |
 \ set colorcolumn=80 |
 \ highlight ColorColumn ctermbg=233 |

" .tex file indentation
au BufNewFile,BufRead *.tex
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" make vimtex integration with okular here
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" make YouCompleteMe enable in vimtex
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme


" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


"=========================================================================
" powerline: Vim statusline
"=========================================================================
"
" path to powerline vim bindings
" set rtp+=~/miniconda3/lib/python3.7/site-packages/powerline/bindings/vim

" powerline setup
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

