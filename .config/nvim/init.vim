syntax on
set background=dark
set encoding=utf-8
set showmatch
set signcolumn=yes
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

"set expandtab
"set tabstop=4
"set softtabstop=-1
"set shiftwidth=2
"set autoindent
"set smartindent
set nocompatible
filetype plugin indent on

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('hashivim/vim-terraform')
call minpac#add('morhetz/gruvbox')
"packloadall

if (has("termguicolors"))
 set termguicolors
endif

autocmd vimenter * colorscheme gruvbox

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

