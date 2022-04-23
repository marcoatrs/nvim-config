colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark
let g:airline_theme='deus'

set termguicolors
lua << EOF
require("bufferline").setup{}
require('telescope').setup{defaults = {file_ignore_patterns = {".venv", "__pycache__" }}}
require'nvim-tree'.setup{}
EOF
