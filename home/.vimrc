" don't make vim vi-compatible
set nocompatible

" forgot to use sudo for editing?
cmap w!! w !sudo tee % >/dev/null

" Solarized colorscheme
syntax enable
set background=dark
colorscheme solarized
