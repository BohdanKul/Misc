" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
" :set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


" set formatoptions+=t
" set textwidth=80

" set background=dark        " adapt colors for dark background
" colorscheme wombat256      " use this color scheme


" status lines (bottom of screen)
set laststatus=2                " takes up a line to display the last status
set statusline=%-25.45F\ %-2.9y%=%4l/%-4L\ %3.3v\ %3.3p%%%a%r%m

" set default leader to ,
let mapleader = ","

" This is a very important section related to how text is wrapped etc.
set nowrap
set textwidth=79
set nolinebreak   " affects the way lines are displayed on the screen when wrapped

" Define a function that toggles between wrap modes
function! ToggleWrap()
 if (&wrap == 1)
   setlocal nowrap
   setlocal textwidth=79
   setlocal nolinebreak
 else
   setlocal nolist
   setlocal wrap
   setlocal linebreak
   setlocal textwidth=0
 endif
endfun

map <leader>tw :call ToggleWrap()<CR>
