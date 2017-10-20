colorscheme evening

" Pathogen - plugin management
call pathogen#infect()

" NERDTree - automatic file structure and NERDTree initialization and move cursor to the main window
autocmd VimEnter * NERDTree | wincmd p
" No unicode characters
set encoding=utf-8

" CtrlP
let g:ctrlp_working_path_mode = 'ra'

map <f9> :make

set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set expandtab       " Expand TABs to spaces
set shiftwidth=2    " Indents will have a width of 2
set number          " Line numbers
set autoindent      " Automatic indentation

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
