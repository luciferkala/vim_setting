" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Plug Start
set nocompatible " Vim 으로 사용하겠다는 뜻
filetype off " 필수 옵션

call plug#begin('~/.vim/plugged') " Plugin Path 설정
" Vim Color Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
" tmux (when we use tmux, we use multiple terminal app)
Plug 'christoomey/vim-tmux-navigator' " tmux and vim integration (need this to move between nerdtree too)
" Git managements
Plug 'airblade/vim-gitgutter' " 변경 사항을 알 수 있음
Plug 'tpope/vim-fugitive' " vim 에서 git을 사용할 수 있게 해줌
" Tagbar
Plug 'majutsushi/tagbar'
" Finder plugin
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Css Color
Plug 'ap/vim-css-color'
" 문법 체크
Plug 'scrooloose/syntastic' " 문법 체크
Plug 'terryma/vim-multiple-cursors' " sublime multiple cursors
" JavaScript indent
Plug 'pangloss/vim-javascript' 
Plug 'mxw/vim-jsx'
" AutoComplete plugins
" build from source code by use yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'alvan/vim-closetag' " auto close html tag
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround' " autocomplete with blocks, 괄호나 따옴표 자동완성
Plug 'scrooloose/nerdcommenter' " autocomplete comments, 주석처리 자동완성 
Plug 'Sirver/ultisnips' " snippets 
" Prettier
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
call plug#end() " Plugin end

set background=dark " 검정배경 사용
colorscheme gruvbox " 컬러 스키마 설정
set laststatus=2 " 상태바 항상 표시. 0 = 미표시, 1 = 2개 이상의 창일때 표시
set number " 라인 번호 표시
set showcmd " 사용자가 입력한 명령어 보여줌
set showmatch " 매칭되는 괄호를 보여줌
set autowrite " 다른 파일로 넘어갈 때 자동저장
set title " 제목을 표시함
set ignorecase " 검색 시 대소문자 구별 X
set ruler " 커서 위치 표시
syntax on " 문법 하이라이트 
set mouse=a "  Enable mouse for scrolling and resizing.
set hlsearch " 검색한 단어 하이라이트 적용

set encoding=utf-8 " encoding을 사용시 utf-8로 적용
set scrolloff=1 " 커서 위와 아래에 유지할 줄 수
set sidescrolloff=5 " 커서 왼쪽과 오른쪽에 유지할 열 수

set shiftround " 줄 변경시 들여쓰기를 가장 가까운 shiftwidth의 크기로 반올림함
set shiftwidth=4 " 공백 추가시 4개의 공백을 사용하여 들여 씀
set smarttab " tabstop의 수만큼 tab을 누를 때 공백을 추가함
set tabstop=4 " tab 입력시 4개의 공백을 추가
set backspace=indent,eol,start " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움 
set autoindent " 새로운 라인이 추가 될 때, 이전의 라인의 들여쓰기에 맞춤
filetype indent on " indent.vim 파일에 설정된 형식별 들여쓰기 적용
set clipboard=unnamed " Vim에서 복사한 내용이 클립보드에 복사됨
set lazyredraw " Don’t update screen during macro and script execution.
set history=1000 " 실행 취소의 제한을 높임 

" React에서 사용하는 jsx 문법 적용
let g:jsx_ext_required = 0

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

let g:airline_theme='molokai'

nmap <F8> :TagbarToggle<CR>

" coc.nvim configuration
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
let g:coc_snippet_next = '<tab>'

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" always show signcolumns
set signcolumn=yes
inoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vim-closetag configuration
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"" MULTIPLE-CURSORS
let g:multi_cursor_quit_key='<Space>'

