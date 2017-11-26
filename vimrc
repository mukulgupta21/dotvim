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
syntax on           " Enable syntax highlighting

set scrolloff=5     " Always keep an offset of a few lines when scrolling
set hlsearch        " Highling searched word
set incsearch       " Move the cursor to the match while still typing
set showcmd         " Display incomplete commands

if has("autocmd")
  " If the filetype is Makefile then we need to use tabs
  " So do not expand tabs into space.
  autocmd FileType make   set noexpandtab
  " If the extension is *.md, or *.markdown, explcitly set markdown as
  " filetype
  autocmd BufRead,BufNewFile *.md,*.markdown set ft=markdown
  " vim-surround specific
  " Use `Sc` in visual mode to use code formatting in markdown
  silent! autocmd BufRead,BufNewFile *.md,*.markdown let g:surround_{char2nr("c")} = "```\r```"
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" SQLUtilities
" vmap <leader>sf formats SQL in visual mode
" nmap <leader>sfs formats SQL in normal mode
" vmap <leader>sfr formats multiplel SQL statements

" Read from .vimlocal in current directory for project specific vim config.
silent! so .vimlocal

" CtrlSF Plugin key mappings for sublime text like searches
" Depends on ack. So it needs to be installed.
" Useful for recursive search
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
