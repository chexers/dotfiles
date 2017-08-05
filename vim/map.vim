let mapleader="\\"
let maplocalleader="~"

" Leader HJKL to jump panes
nnoremap        <leader>h         <c-w>h
nnoremap        <leader>j         <c-w>j
nnoremap        <leader>k         <c-w>k
nnoremap        <leader>l         <c-w>l

" local leader
nnoremap        <localleader>w    :w!<cr>
nnoremap        <localleader>wq   :wqa!
nnoremap        <localleader>qq   :qa!

" clear search
nnoremap        <leader>/         :nohlsearch<cr>

" esize panes
nnoremap        <leader>-         <c-w>-
nnoremap        <leader>=         <c-w>+
nnoremap        <leader><         5<c-w><
nnoremap        <leader>>         5<c-w>>


" Leader  left or <bs> to prev tab
nnoremap  <leader><left>          :tabprev<cr>
nnoremap  <leader><c-h>           :tabprev<cr>
nnoremap  <leader><bs>            :tabprev<cr>

" Leader <right> or <space> to next tab
nnoremap  <leader><right>         :tabnext<cr>
nnoremap  <leader><c-l>           :tabnext<cr>
nnoremap  <leader><space>         :tabnext<cr>

" Toggle showing line/col indicators
nnoremap  <leader>\               :set invcursorline<cr>
nnoremap  <leader><bar>           :set invcursorcolumn<cr>


map <silent> <leader>n            :set invnumber<cr>
map <silent> <leader>p            :set invpaste<cr>

nnoremap <silent> <leader>w       :WriteFile<cr>
inoremap <silent> <leader>w       <Esc>:WriteFile<cr>

nnoremap <leader>v                :tabedit $MYVIMRC<cr>
nnoremap <leader>R                :ReloadVim<cr>
nnoremap <leader>e                :NERDTreeToggle<cr>
nnoremap <leader>x                :bd<cr>
nnoremap <leader>X                :bd!<cr>
nnoremap <leader>qq               :qa!<cr>


" CtrlP Mappings
nnoremap <leader>b          :CtrlPBuffer<cr>
