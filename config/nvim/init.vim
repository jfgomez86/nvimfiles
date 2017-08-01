call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'kien/ctrlp.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/syntastic'
Plug 'sirtaj/vim-openscad'
Plug 'telamon/vim-color-github'

call plug#end()

" Default Settings
source ~/.nvimfiles/defaults.vim

" Colorscheme
set background=dark
color github

" Customizations
set relativenumber

if has("gui_macvim") && has("gui_running")
  set guioptions-=m       " Can't remember :)
  set guioptions-=T       " No toolbars
  set guioptions-=r       " No scrollbars

  set guifont=Meslo\ LG\ S\ for\ PowerLine
endif

set visualbell t_vb=    " Don't beep

set hidden              " Don't prompt to save when switching buffers

" My Custom Mappings
map <c-b> :CtrlPBuffer<CR>
set wildignore+=.git/**

let g:airline_powerline_fonts = 1

set modeline
