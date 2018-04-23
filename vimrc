" this vimrc written assuming that vim-sensible is already loaded
" https://github.com/tpope/vim-sensible

" augroup is here so we only apply the autocmds once
augroup configgroup
  " clear all autocmds for this group
  autocmd!

  " python
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

  " javascript
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab

  " yaml
  autocmd FileType yaml setlocal indentkeys-=<:> ts=2 sts=2 sw=2 expandtab
augroup END
" vim:set ft=vim et ts=2 sts=2 sw=2:
