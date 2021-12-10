" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

  " Visual
  Plug 'dracula/vim'

  " Interface and navigation
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jpalardy/vim-slime'
  Plug 'elzr/vim-json'

  " Text editing
  Plug 'machakann/vim-sandwich'

  " Code completion (COC)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Git
  Plug 'airblade/vim-gitgutter'

  " Python
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Markdown
  Plug 'godlygeek/tabular'
  Plug 'tpope/vim-markdown'

  " Other
  Plug 'ntpeters/vim-better-whitespace'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen=1

" Lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" fzf
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>F :Files!<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>B :Buffers!<CR>
nnoremap <silent> <leader>a :Ag<CR>
nnoremap <silent> <leader>A :Ag!<CR>

" Vim Better Whitespaces
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
autocmd VimEnter * EnableWhitespace

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0


" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
augroup python_execute
    au!
    au FileType python nmap <leader>s :SlimeSend1 ipython<CR>
    au FileType python nmap <leader>a <Plug>SlimeLineSend
    au FileType python xmap <leader>a <Plug>SlimeRegionSend
    au FileType python nmap <leader>d <Plug>SlimeSendCell
augroup END
let g:slime_python_ipython = 1

" GitGutter
set updatetime=100
let g:gitgutter_sign_added = '|'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '|'
let g:gitgutter_sign_removed_first_line = '|'
let g:gitgutter_sign_modified_removed = '|'

" COC
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

