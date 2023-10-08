"not implemented fully but some additional options to consider in:
"https://vim.fandom.com/wiki/Example_vimrc
"
set number
set scl=yes

set splitright " default to splitting right (instead of left)
set splitbelow " default to splitting below (instead of above)
set wrap " soft word wrapping
set linebreak " break on words, not chars

" shortens time until the gitgutter shows up
set updatetime=1200

" navigate naturally, even with soft wrap enabled
nnoremap j gj
nnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_docstring_preview=1

" Enable folding with the spacebar
nnoremap <space> za

"With this FastFold plug-in, the folds in the currently edited buffer are updated by an
"automatic fold method only
"    when saving the buffer
"    when closing or opening folds (zo, za, zc, etc...)
"    when moving or operating fold-wise (zj,zk,[z,]z)
"    when typing zuz in normal mode

"https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions
"To add the proper PEP 8 indentation, add the following to your .vimrc:
au BufNewFile,BufRead *.py
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix

set encoding=utf-8

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Plugin 'vim-scripts/indentpython.vim'

