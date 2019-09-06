" Basics --------------------------

set belloff=all
set nocompatible
set nu
set rnu
set mouse=a
set ttyfast
set noswapfile

" Identation ----------------------

nmap I gg=G
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4

" Highlights ----------------------

syntax on
set cc=81
set cursorline
set incsearch
hi ColorColumn ctermbg=darkgrey
hi CursorLineNR ctermbg=magenta ctermfg=black
hi Pmenu ctermbg=black ctermfg=yellow
hi PmenuSel ctermbg=black ctermfg=magenta
hi PmenuSbar ctermbg=black
hi PmenuThumb ctermbg=magenta
hi ModeMsg ctermfg=green ctermbg=black
hi Visual ctermfg=green
hi LineNR ctermfg=blue
hi Comment ctermfg=darkgrey
hi MatchParen ctermbg=black ctermfg=green
hi Vertsplit ctermfg=magenta
hi NonText ctermfg=magenta

" Shortcuts Escape Mode -----------

nmap œ ^
nmap ∑ $
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
"inoremap ## #include
inoremap {{ {}<left><cr><up><right><cr>
inoremap <F10> int<tab><tab>main(int ac, char **av)<cr>{}<left><cr><up><right><cr>return (0);<up><cr>
inoremap <F8> if (!(= (*)malloc(sizeof())))<cr>return (NULL);<up><esc>^<right><right><right><right><right>a
inoremap <F2> #ifndef <cr># define<cr><cr>#endif<up><up><up><esc>$i<left>

" Shortcuts Visual Mode ------------

vnoremap ** <esc>`>a<cr>*/<esc>`<i<cr><up>/* 
