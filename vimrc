set nocompatible		" be iMproved, required
filetype off				" required

set rtp+=~/.vim/bundle/Vundle.vim

" vundle plugins 

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()						" required

" UltiSnips Trigger configuration. 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" General configurations
let mapleader = ','

set expandtab
set relativenumber!
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set noswapfile
set encoding=utf-8
set clipboard=unnamedplus

" Disable arrows modes: n,i
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" System mods
color torte
syntax on
filetype plugin indent on 	" required


" Start mapping
inoremap jk <esc>

" Nerdtree configuration
noremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1

" plasticboy/vim-markdown
autocmd FileType markdown let b:sleuth_automatic=0
autocmd FileType markdown set conceallevel=0
autocmd FileType markdown normal zR

let g:vim_markdown_frontmatter=1

" iamcco/markdown-preview.nvim
let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='/home/marty/.local/.lib/github-markdown.css'

