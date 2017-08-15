filetype indent plugin on
syntax on

set nowrap
set nocompatible        
set hidden
set history=50          
set ruler               
set noerrorbells        
set cursorline nocursorcolumn          
set laststatus=2        
set expandtab           
set number              
set showcmd ignorecase          
set smartcase smarttab            
set autoindent
set showmode showmatch hlsearch incsearch           
set title               
set pastetoggle=<C-P>   
set wildmenu wildmode=longest:full
set showcmd shiftwidth=4 softtabstop=4
set undolevels=1000     
set backspace=indent,eol,start
set autochdir

" Coloring scheme
set background=dark
colorscheme Tomorrow-Night-Bright

" set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ (%P)
set statusline=%t\ %m%r%y%=[%lL.%cC]\ (%P)
set laststatus=2

" change highlighting based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=green ctermbg=black
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=white ctermbg=red
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
endif


" NERDTree options
let g:NERDTreeAutoCenter=1   
let g:NERDTreeCaseSensitiveSort=0
let g:NERDTreeNaturalSort=1
let g:NERDTreeSortHiddenFirst=1
let g:NERDTreeChDirMode=2
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeHijackNetrw=1
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeBookmarksFile=expand('~'). "/.config/vim/bookmarks.txt"
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowFiles=1
let g:NERDTreeShowHidden=0
let g:NERDTreeStatusline=''
let g:NERDTreeWinPos=1
let g:NERDTreeWinSize=18 
let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeSingleChildDir=1
let g:NERDTreeCascadeOpenSingleChildDir=1
let g:NERDTreeAutoDeleteBuffer=1 

let g:airline#extensions#tabline#enabled = 1

