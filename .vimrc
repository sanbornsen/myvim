set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
"NERDTree tabs
Bundle 'jistr/vim-nerdtree-tabs' 

call vundle#end()
filetype plugin indent on
filetype plugin on

"For the scrooloose/syntastic plugin
let g:syntastic_check_on_open=1

"For the Valloric/YouCompleteMe plugin
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set t_Co=256
syntax on
set background=dark
"colorscheme distinguished
"colorscheme 0x7A69_dark
colorscheme Tomorrow-Night-Eighties
set nu

set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start


"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"nerdtree git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Open file in a new tab
" by default NERDTree
" let NERDTreeMapOpenInTab='<ENTER>'

map <C-t> :NERDTreeTabsToggle<CR>
map <C-f> :NERDTreeTabsFind<CR>

" mapping for tabs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
