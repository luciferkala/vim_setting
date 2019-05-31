" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Make sure you use single quotes
Plug 'tpope/vim-surround'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'hdima/python-syntax'
Plug 'klen/python-mode'
Plug 'valloric/youcompleteme'

Plug 'majutsushi/tagbar'

Plug 'junegunn/vim-easy-align'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
" Any valid git URL is allowed
Plug 'ternjs/tern_for_vim' , { 'do' : 'npm install'}
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plugin options
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/emmet-vim'
" Initialize plugin system
Plug 'morhetz/gruvbox'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
   \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
" You will also need the following for function argument completion:
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
set background=dark
set backspace=indent,eol,start
colorscheme gruvbox
set laststatus=2
set number
set backspace=2
set showmatch
set autowrite
set title
set ignorecase
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_server_python_interpreter = "/Library/Frameworks/Python.framework/Versions/3.6/bin/python3"

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0

"To avoid conflict snippets

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']

let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <leader>g :YcmCompleter GoTo<CR>

nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>

nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>

nnoremap <leader>t :YcmCompleter GetType<CR>

nnoremap <leader>p :YcmCompleter GetParent<CR>

let g:airline_theme='molokai'

let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 0
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_autoimport = 0

let tern#is_show_argument_hints_enabled = 1

let g:Tlist_Ctags_Cmd = '/usr/bin/ctags'
nmap <F8> :TagbarToggle<CR>
