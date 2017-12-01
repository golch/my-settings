" 백스페이스 강화
set backspace=indent,eol,start

set ruler               " show line and column number
set showcmd             " show (partial) command in status line

syntax enable
set nu
set autoindent
set cindent
set hlsearch
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set laststatus=2
set scrolloff=2
set showmatch

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 구문 강조 사용
if has("syntax")
 syntax on
endif

" Vim Color schema
colorscheme zellner

