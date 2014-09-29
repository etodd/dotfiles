set t_Co=256

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-gitgutter
set runtimepath^=~/.vim/bundle/lightline.vim
set runtimepath^=~/.vim/bundle/YouCompleteMe
set completeopt-=preview
let g:ctrlp_working_path_mode = 'a'
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }
set laststatus=2

set errorformat=
  \%f:%l:%c:{%*[^}]}:\ error:\ %m,
  \%f:%l:%c:{%*[^}]}:\ fatal\ error:\ %m,
  \%f:%l:%c:{%*[^}]}:\ warning:\ %m,
  \%f:%l:%c:\ error:\ %m,
  \%f:%l:%c:\ fatal\ error:\ %m,
  \%f:%l:%c:\ warning:\ %m,
  \%f:%l:\ error:\ %m,
  \%f:%l:\ fatal\ error:\ %m,
  \%f:%l:\ warning:\ %m
 
set wildmenu
set wildmode=full
set wildignore+=*.o,*.obj,.git,.svn,build,*.pyc,*.jpg,*.png,*.gif,*.d,Pods/Headers,Pods/BuildHeaders
 
set nohidden
 
filetype indent off
set autoindent                                                                                                                    
set nowrap
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
 
set scrolloff=5
set sidescrolloff=5
set nocompatible
set ttyfast
set noerrorbells
set incsearch
set ignorecase
set showmatch
set diffopt=filler,iwhite
set background=dark
set autoread
set lazyredraw
set history=1000
syntax on
set undolevels=1000
set nobackup
set noswapfile
set title
set noruler
set shortmess+=I
 
set cursorline
set cursorcolumn
 
color ron
 
hi CursorLine ctermbg=black cterm=none
hi CursorColumn ctermbg=black
 
set backspace=indent,eol,start
set whichwrap=h,l,~,[,]
 
nnoremap j gj
nnoremap k gk
set pastetoggle=<F2>
cmap w!! w !sudo tee % >/dev/null
 
ia teh      the
ia htis     this
ia tihs     this
ia funciton function
ia fucntion function
ia funtion  function
ia retunr   return
ia reutrn   return
ia sefl     self
ia eslf     self

set noshowmode
