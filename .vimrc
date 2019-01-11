set t_Co=256

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/lightline.vim
set runtimepath^=~/.vim/bundle/vim-gitgutter
set runtimepath^=~/.vim/bundle/vim-sleuth
let g:ctrlp_working_path_mode = 'a'
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

set wildignore+=*/.yarn-cache/*,*/.vscode/*,*/bin/*,*/obj/*,*/node_modules/*,*/.git/*

set completeopt-=preview
set laststatus=2
set secure
set exrc
set encoding=utf-8
setglobal fileencoding=utf-8
set nohidden
set nohlsearch
set autoindent                                                                                                                    
set copyindent
set smartindent
set breakindent
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
set smartcase
set showmatch
set diffopt=filler,iwhite
set background=dark
set autoread
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set title
set noruler
set shortmess+=Ia
set ttimeoutlen=0
set magic
set t_ti= t_te=
set synmaxcol=900
set cursorline
set cursorcolumn
set noshowmode
set pastetoggle=<F2>
set backspace=indent,eol,start
set whichwrap=h,l,~,[,]
 
nnoremap j gj
nnoremap k gk
cmap w!! w !sudo tee % >/dev/null

" return to old position when reopening files
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
 
color ron
syntax on
hi ErrorMsg ctermfg=Red ctermbg=Black
hi Error ctermfg=Red ctermbg=Black
hi SpellBad ctermfg=Red ctermbg=Black
hi SpellCap ctermfg=0 ctermbg=11
hi Cursor ctermbg=white
hi CursorLine ctermbg=black cterm=none
hi CursorColumn ctermbg=black
hi MatchParen ctermbg=black ctermfg=red
hi DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white 
hi DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=white 
hi DiffText term=reverse cterm=bold ctermfg=15 ctermbg=4
hi DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=white 
hi Todo term=standout ctermfg=11 ctermbg=0
