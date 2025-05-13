set encoding=utf-8

set colorcolumn=81

" execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed

" highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" show line number
set number

" show tabs/whitespaces
set list

" change grep to ripgre
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" jump to the last position when reopening the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enable mouse
set mouse=a

" enable gdb
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" disable status line
set laststatus=0

" set tabs to be 4 chars wide
set tabstop=4
set shiftwidth=4

" don't put spaces instead of tabs
set softtabstop=0 noexpandtab
