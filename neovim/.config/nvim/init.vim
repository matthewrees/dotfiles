if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:ale_completion_enabled = 1
let g:ale_zig_zls_executable = '/Users/matthewrees/git/zls/zig-cache/bin/zls'

call plug#begin(stdpath('data') . '/plugged')
  Plug 'ziglang/zig.vim'
  Plug 'dense-analysis/ale'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

autocmd VimEnter * PlugUpdate

let g:deoplete#enable_at_startup = 1

inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
