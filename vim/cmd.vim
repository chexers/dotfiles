
command! Configs        NERDTree ~/.config

command! Config        tabedit ~/.config/vim/rc.vim
command! Mappings      tabedit ~/.config/vim/map.vim
command! Options       tabedit ~/.config/vim/opt.vim

command! WriteFile     write! %
command! ReloadVim     source $MYVIMRC 


" Auto-close nerdtree tab if orphan
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Auto open nerdtree if no stdin
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" NERDTree auto cwd to closest prent with signs of being project root
" or just the parent of current file
function! s:setcwd()
  let cph = expand('%:p:h', 1)
  if cph =~ '^.\+://' | retu | en
  for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
    let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
    if wd != '' | let &acd = 0 | brea | en
  endfo
  exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction

autocmd BufEnter * call s:setcwd()




