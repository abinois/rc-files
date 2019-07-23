" Basics --------------------------

set nocompatible
set nu
set rnu
set mouse=a
set ttyfast
set noswapfile
set visualbell


" Identation ----------------------

nmap I gg=G
set tabstop=4
set autoindent
set shiftwidth=4


" Highlights ----------------------

syntax on
set cc=81
hi ColorColumn ctermbg=darkgrey
set cursorline
hi CursorLineNR ctermbg=darkgreen ctermfg=black
set incsearch


" Shortcuts Escape Mode -----------

nmap h :nohl<cr> 
nmap - <esc>ci(
nmap å dd<up><up>$p
nmap Ω dd$p
nmap // ^i<left><left>//<esc><esc>
nmap \\ ^i<left><left><del><del><esc><esc>
nmap S ^iif (!(<esc>$a))<cr>return (NULL);<esc>


" Shortcuts Insert Mode ------------

inoremap (( ()<left>
inoremap [[ []<left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap ## #include 
inoremap {{ {}<left><cr><up><right><cr>
inoremap <F10> int<tab><tab>main(int ac, char **av)<cr>{}<left><cr><up><right><cr>return (0);<up><cr>
inoremap <F8> if (!(= (*)malloc(sizeof())))<cr>return (NULL);<up><esc>^<right><right><right><right><right>a
inoremap <F2> #ifndef <cr># define<cr><cr>#endif<up><up><up><esc>$i<left>

" Shortcuts Visual Mode ------------

vnoremap ** <esc>`>a<cr>*/<esc>`<i<cr><up>/*
