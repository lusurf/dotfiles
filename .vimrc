" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

syntax on
set shiftround
set hlsearch showmatch
set sts=4
set tabstop=8             " Use industry standard 8-char tabs
set shiftround            " Indent/Dedent to nearest 4-char boundary
set shiftwidth=4          " Use standard 4-char indentation
set textwidth=120
set colorcolumn=+0        " Highlight the textwidth column
set t_Co=256
set ignorecase
set smartcase             " When ignorecase is on, ignores case only when no uppercase letters are used.
set expandtab
set whichwrap+=<,>,[,]    " Allow left & right keys to move the cursor to the next line when on EOL

set autoindent smartindent
set incsearch
let g:zenburn_high_Contrast = 1
colorscheme zenburn
set tags=xxx.tags,~/src/tags
set modeline
set wildmenu              " Make tab completion for files/buffers act like bash
set wildmode=longest:full
set wildignore=*.pyc
filetype indent on
filetype plugin on

" tab navigation
map tl :tabnext<CR>
map tk :tabnext<CR>
map th :tabprev<CR>
map tj :tabprev<CR>
map tn :tabnew<CR>
map td :tabclose<CR>

" map <c-]> :tselect<CR>
map <c-\> :pop<CR>
map <c-o> :set paste<CR>
let ropevim_vim_completion=1

" Pylint integration (Ctrl+P to manually scan, automatically started when saving files )
" Requires Pylint plugin, http://www.vim.org/scripts/script.php?script_id=891
autocmd FileType python compiler pylint
map <c-P> :Pylint<CR>
"let g:pylint_cwindow = 0 " set to 0 to disable auto 'cwindow' opening, open manually with :cwindow

ab pymain if __name__ == "__main__":

inoremap <F9> <Esc>:make<CR>
inoremap <F10> <Esc>:cnext<CR>
inoremap <S-F10> <Esc>:cprev<CR>
noremap <F9> <Esc>:make<CR>
noremap <F10> <Esc>:cnext<CR>
noremap <S-F10> <Esc>:cprev<CR>

" Find bad whitespaces
"highlight BadWhitespace ctermbg=red guibg=red
"au WinEnter,BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$\|^\t\+/

set cursorline
