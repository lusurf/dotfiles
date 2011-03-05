syntax on
set shiftround
set hlsearch showmatch
set sts=4
set tabstop=8               " Use industry standard 8-char tabs
set shiftround              " Indent/Dedent to nearest 4-char boundary
set shiftwidth=4            " Use standard 4-char indentation
set tw=120
set t_Co=256
set ignorecase
set smartcase
set expandtab
set autoindent smartindent
set incsearch
let g:zenburn_high_Contrast = 1
colorscheme zenburn
set tags=xxx.tags,~/src/tags
set modeline
set wildmenu 
set wildmode=longest:full
set wildignore=*.pyc
filetype indent on
filetype plugin on

" tab navigation like firefox
map ,, :tabprev<CR>
map ,. :tabnext<CR>
map ,t :tabnew<CR>
map ,d :tabclose<CR>
map T :TlistToggle<CR>

" map <c-]> :tselect<CR>
map <c-\> :pop<CR>
map <c-o> :set paste<CR>
let ropevim_vim_completion=1

" autocmd
autocmd FileType python compiler pylint

map <c-P> :Pylint<CR>
let g:pylint_cwindow = 0

set nocompatible
ab pymain if __name__ == "__main__":
