:set relativenumber
:set scrolloff=12
:set expandtab
:set mouse=a

call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vwxyutarooo/nerdtree-devicons-syntax'
    Plug 'chun-yang/auto-pairs'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'preservim/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
call plug#end()

let NERDTreeShowHidden=1
let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'S',
                \ 'Untracked' :'U',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'X',
                \ 'Dirty'     :'@',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'O',
                \ 'Unknown'   :'?',
                \ }

colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark
let g:airline_theme='deus'

let mapleader = " "

nnoremap <C-s> :w<CR>
nnoremap <C-x> :wq<CR>
nnoremap <C-q> :q<CR>

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nnoremap <A-S-Down> :t .<CR>==
nnoremap <A-S-Up> :t .-1<CR>==
inoremap <A-S-Down> <ESC>:t .<CR>==gi
inoremap <A-S-Up> <ESC>:t .-1<CR>==gi
vnoremap <A-S-Down> :t '><CR>gv=gv
vnoremap <A-S-Up> :t '<-1<CR>gv=gv

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <ESC>:m .+1<CR>==gi
inoremap <A-Up> <ESC>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

map <leader>ff :Telescope find_files<CR>

autocmd Filetype * set ts=4 sts=4 sw=4
autocmd Filetype python set ts=4 sts=4 sw=4
autocmd Filetype javascript set ts=2 sts=2 sw=2
autocmd Filetype json set ts=2 sts=2 sw=2
autocmd Filetype json set ts=2 sts=2 sw=2

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

lua << EOF
require('telescope').setup{defaults = {file_ignore_patterns = {".venv", "__pycache__" }}}
EOF
