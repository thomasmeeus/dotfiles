" add linenumbers
set number

" don't make vim vi-compatible
set nocompatible

" forgot to use sudo for editing?
cmap w!! w !sudo tee % >/dev/null

" enable syntax highlighting
syntax enable

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
    if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
        let g:solarized_termcolors = &t_Co
        let g:solarized_termtrans = 1
        colorscheme solarized
    endif

endif

" }}}

