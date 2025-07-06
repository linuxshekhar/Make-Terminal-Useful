" Keep Syntax On
syntax on

"Setup Leader Key
let mapleader = " "

"Set line number as relative number and then easy to use with g,j,d,y etc
set relativenumber

" Enable backups
set backup
set writebackup
set backupcopy=yes

" Set backup, swap, and undo directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Enable persistent undo
set undofile

" Use full path in filenames to avoid collisions
set backupskip=

augroup TimestampedBackups
  autocmd!
  autocmd BufWritePre * call TimestampedBackup()
augroup END

function! TimestampedBackup()
  let l:filename = expand('%:p')
  if filereadable(l:filename)
    let l:backup_dir = expand('~/.vim/backup')
    let l:timestamp = strftime("%Y%m%d_%H%M%S")
    let l:base = substitute(fnamemodify(l:filename, ':p'), '/', '_', 'g')
    let l:backup_file = l:backup_dir . '/' . l:base . '_' . l:timestamp . '.bak'
    call mkdir(l:backup_dir, "p")
    silent execute '!cp ' . shellescape(l:filename) . ' ' . shellescape(l:backup_file)
  endif
endfunction

" Use double slashes to allow Vim to create directories automatically

"Tab settings
set tabstop=4 "tabs expand to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

"YAML files setting
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn

"PYTHON files setting
autocmd Filetype python set cursorcolumn

"Setup Smart Search
set ignorecase
set smartcase

"Search starts while typing
set incsearch

"Press <space>+g to toggle between Goyo Mode
nnoremap <leader>g :Goyo<CR>

" turn spelling off or on
" correct
nnoremap <leader>s :setlocal spell!<CR>

" These two clipboard functions only yank and put to primary X11 clipboard
" yank too system clipboard
nnoremap <leader>y "*y
"Put from system clipboard
nnoremap <leader>p "*p

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

Plug 'pearofducks/ansible-vim'

Plug 'lervag/vimtex'

Plug 'chikamichi/mediawiki.vim'

Plug 'flazz/vim-colorschemes'

Plug 'https://github.com/nathanaelkane/vim-indent-guides'

Plug 'https://github.com/machakann/vim-highlightedyank'

Plug 'https://github.com/junegunn/goyo.vim'

Plug 'diepm/vim-rest-console'

Plug 'scrooloose/nerdtree'

Plug 'https://github.com/hashivim/vim-terraform.git'

Plug 'https://github.com/tweekmonster/django-plus.vim'

Plug 'https://github.com/pangloss/vim-javascript'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

call plug#end()

" Spell check syntax highliting
 
let g:gruvbox_guisp_fallback = "bg"

" Airline configuration
" Enable airline powerline symbols (needs patched font)
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

"needed for italics, only works in some terminals
let g:gruvbox_italic=1 
"change to the change coloursheme to whaever I prefer at the time 
colorscheme gruvbox
set background=dark
"not sure if this is needed or not, or even if it works. Might just be default
"iunno lol
"set statusline=%F[%L][%{&ff}]%y[%04l,%04v]

" Refresh gitgutter signs faster
set updatetime=100

" Optional: custom signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '_'



"hide the options in gvim
set guioptions=aci

"spelling 
setlocal spell spelllang=en_us
setlocal spell!
