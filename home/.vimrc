" add linenumbers
set number

" highlight current line
set cursorline

" don't make vim vi-compatible
set nocompatible

" enable backspace
set backspace=2

" forgot to use sudo for editing?
cmap w!! w !sudo tee % >/dev/null

" enable syntax highlighting
syntax enable

" set tab=2spaces
set tabstop=2

" highlight searches
set hlsearch

" enable mouse support
set mouse=a

" Show the current mode
set showmode

" Set ruler
set ruler

" Color Scheme ----------------------------------------------------------- {{{

" Set the color scheme.
try
    set background=dark
    colorscheme solarized
catch /E185:/
    colorscheme default
endtry

" }}}

" Solarized -------------------------------------------------------------- {{{

 if exists('g:colors_name') && g:colors_name == 'solarized'
    " Text is unreadable with background transparency.
    if has('gui_macvim')
        set transparency=0
    endif

    " Highlighted text is unreadable in Terminal.app because it
    " does not support setting of the cursor foreground color.

    let g:solarized_termcolors = &t_Co
    let g:solarized_termtrans = 1
    colorscheme solarized


endif

" }}}

