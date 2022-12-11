" https://dougblack.io/words/a-good-vimrc.html

syntax enable
set tabstop=4
set softtabstop=4
set expandtab

set nocompatible
set number
set showcmd
set laststatus=2 " Always show the status line
set cursorline
set mouse=a " Remember to keep shift pressed to copy and than paste with the mouse scrool wheel
filetype indent on
set wildmenu 
set showmatch " highlight matching [{()}]

set splitbelow
set splitright

"set t_Co=256

set termguicolors
"set guifont=MesloLGS\ NF \10 

set guifont=JetBrainsMono " 
"set guifont=FiraCode " Firacode is a font with ligatures, to list all fonts use fc-list command 
set guiligatures=!\"#$%&()*+-./:<=>?@[]^_{\|~ "Set it to an empty string to disable ligatures.
set ttimeoutlen =10     " delay in switching between modes and other things...
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight mapped it to ,<space>.
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za " space open/closes folds

let mapleader=","       " leader is comma

" save session, super save, saves position of windows and all
nnoremap <leader>s :mksession<CR> 

filetype plugin on
set omnifunc=syntaxcomplete#Complete

autocmd BufEnter * silent! lcd %:p:h "This autocmd changes the window-local current directory to be the same as the directory of the current file. It fails silently to prevent error messages when you edit files via ftp or new files. https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file 

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

au BufRead,BufNewFile *.lammps set filetype=lammps " syntax highlighting for lammps files ~/.vim/syntax/lammps.vim

" PER IL FILE MANAGER INTEGRATO NETRW 
" https://shapeshed.com/vim-netrw/
" https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1 "Keep the directory browser always to the left when opening a new file with v
let g:netrw_winsize = 20
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Hide dotfiles on load.
let g:netrw_localcopydircmd = 'cp -r' " Change the copy command. Mostly to enable recursive copy of directories.

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"" STATUS LINE SENZA AIRLINE, BASTA L'ULTIMA RIGA

"set statusline=%.20F      " Full path to the file truncated to 20 character
"set statusline+=%=        " Switch to the right side
"set statusline+=%y        " Filetype
"set statusline+=\         " Space 
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%L        " Total lines
"set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
"" FINE STATUS LINE SENZA VIM AIRLINE 

"DA Abilitare solo se il plugin VIM-AIRLINE e' installato

let g:airline_powerline_fonts = 1
"let g:airline_theme='papercolor'
let g:airline#extensions#whitespace#enabled = 0
let g:bufferline_echo = 0
set noshowmode " non mostra il modo, va bene perche' il plugin airline lo fa gia' nella barra

" FOR KITTY TERMINAL
" vim hardcodes background color erase even if the terminfo file does
    " not contain bce (not to mention that libvte based terminals
    " incorrectly contain bce in their terminfo files). This causes
    " incorrect background rendering when using a color theme with a
    " background color.
    let &t_ut=''
"colorscheme PaperColor
colorscheme solarized8

" It creates all the custom operator-pending mappings required for di,, vi%, ci:, ya| and so on. // di, = delete inner delimited by the ,
" to select, delect, copy etc inside the below delimiters
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" To execute a python3 script pressing f10 in normal mode. remember to save it before executing
nnoremap <F10> <Esc>:w<CR> :echo system('python3 "' . expand('%') . '"')<cr>
