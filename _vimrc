call plug#begin('~/vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'vim-scripts/XMLExpander'
"Plug 'Chiel92/vim-autoformat'
Plug 'chrisbra/vim-show-char'
call plug#end()


"Other plugins:
" To display help for vim whitespace plugin type :h ShowWhitespace.txt


"------------ MY CUSTOMIZATIONS -----------------
set number
set backspace=indent,eol,start
set term=win32

"This is to set default line endings to unix style [LF] /n
set fileformats=unix,dos
set fileformat=unix

"--- Airline
set encoding=utf-8
let g:airline_powerline_fonts = 1
set guifont=Fira\ Mono\ Medium\ for\ Powerline:h9

" Auto identation
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null


"Formatting plugins for vim-autoformater
let g:formatterpath = ["%CMDER_ROOT%\vendor\tidy"]

" Tab settings
"this enables tabline list in the top with list of the open files
"use :tabe <filename> to open new files
:set tabline=%!MyTabLine()

" Enable highlighting for the search via /
set hlsearch
"hi Search guibg=LightBlue

"-----------CUSTOM KEY MAPPINGS--------------------

"--NOTES--:
"
":ShowWhiteToggle to se whitespaces

"Toggle whitespace and linebreak characters visibility
map <F2> :set list<bar> :ShowWhiteToggle<CR>
map <F3> :set nolist<CR>

"Auto pretty format XML file
noremap <F5> :.!xmllint --format --recover - 2>/dev/null<CR>

"Change text file type between linux and dos
map <F9> :e ++ff=unix<CR>
map <F10> :e ++ff=dos<CR>

"Switching to next and previous tabs by Ctrl+l and Ctrl+h
noremap <C-l> :n<CR>
noremap <C-h> :N<CR>

"This changes the tab mapping to ?\ and end of line mapping to ¬
set listchars=tab:?\ ,eol:¬

" # UNUSED MAPPINGS
"map <F2> :set list <bar> :e ++ff=unix<CR>
"map <F3> :set nolist <bar> :e ++ff=dos<CR>
"noremap <F5> :!tidy -xml -q -i %
"noremap <F6> :Autoformat<CR>
"noremap <F7> :!tidy -xml -q -i %<CR><L><CR><bar>:e


"CUSTOM FUNCTIONS

