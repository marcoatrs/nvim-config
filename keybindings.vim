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

nnoremap <C-n> :NvimTreeFocus<CR>
nnoremap <C-b> :NvimTreeToggle<CR>


let mapleader = " "

map <leader>ff :Telescope find_files<CR>
