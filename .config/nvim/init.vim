let mapleader = ","

" File types
autocmd FileType html,css setlocal expandtab softtabstop shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab softtabstop shiftwidth=4 tabstop=4

" Don't go on forever...
:set colorcolumn=120
highlight ColorColumn ctermbg=DarkGray

" I hate reaching up for these regex keys
nmap <leader>, ^
nmap <leader>. $
nmap 0 ^

" System clipboad, please
set clipboard=unnamedplus

" Searching
set ignorecase
set smartcase
nnoremap <leader>/ :noh<return>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
nmap <space> /
nmap <leader><space> ?

let g:loaded_matchparen=1

" Use =j to format the whole buffer as JSON
nmap =j :%!python -m json.tool<CR>:set syntax=json<CR>

" And =x to format as JSON
nmap =x :%!python -c 'import sys;import xml.dom.minidom;s=sys.stdin.read();print(xml.dom.minidom.parseString(s).toprettyxml())'<CR>:set syntax=xml<CR>

set number
set relativenumber

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('unblevable/quick-scope')
  call dein#add('itchyny/lightline.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
