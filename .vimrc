" use vim settings (instead of vi) and must be first
set nocompatible

" sane backspace settings
set backspace=indent,eol,start

" syntax highlighting
syntax on

" file type detection and language indenting
filetype plugin indent on

" line numbers
set number

" allow hidden buffers, don't limit to 1 file per window/split
set hidden

" vim-terraform
let g:terraform_align=1
let g:terraform_commentstring='//%s'
let g:terraform_fmt_on_save=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
