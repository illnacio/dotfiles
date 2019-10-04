filetype plugin indent on
syntax enable
set number
set nowrap
set signcolumn=yes
set autoindent
set expandtab 
set laststatus=2
set statusline=%F
set wildmenu
set showcmd
set undofile
set undodir=.config/nvim/undodir
set backupdir=.config/nvim/backup
set writebackup 
set backupcopy=yes
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-n> :NERDTreeTabsToggle<CR>
  nnoremap <C-f> :NERDTreeFind<CR>
  let NERDTreeChDirMode=2
  let g:NERDTreeDirArrowExpandable = '├'
  let g:NERDTreeDirArrowCollapsible = '└'
  let g:NERDTreeMapActivateNode = '<tab>'

call plug#begin('.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'chrisbra/Colorizer'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'                                           " File tree browser
Plug 'Xuyuanp/nerdtree-git-plugin'                                   " Git for NerdTree
Plug 'jistr/vim-nerdtree-tabs'                                       " NerdTree independent of tabs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
call plug#end()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
