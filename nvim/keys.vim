" NERDTree
nmap <C-t> :NERDTreeToggle<CR>
nmap <A-r> :NERDTreeFind<cr>

" fzf open files
nmap <C-p> :Files<cr>

" fzf search globally
nmap <C-\> :Rg <CR>
vmap <C-\> :Rg @* <CR>

" fzf search tags in current file
nnoremap <A-t> :BTags<CR>

" fzf history
nnoremap <C-h> :History<CR>

" move lines with shortcuts
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
" inoremap <S-j> <Esc>:m .+1<CR>==gi
" inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

set clipboard=unnamed

" wayland mapping for copying to cliboard
let g:clipboard = {
    \   'copy': {
    \       '+': ['wl-copy', '--trim-newline'],
    \       '*': ['wl-copy', '--trim-newline'],
    \   },
    \   'paste': {
    \       '+': ['wl-paste', '--no-newline'],
    \       '*': ['wl-paste', '--no-newline'],
    \   },
    \ }

" copy to OS clipboard
noremap <C-y> "*y
noremap <C-Y> "+y

" select all
nnoremap <C-a> ggVG

" replace
nnoremap <silent> r* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> r* "sy:let @/=@s<CR>cgn

" commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,js,java,scala,dts	let b:comment_leader = '// '
  autocmd FileType sh,ruby,python		let b:comment_leader = '# '
  autocmd FileType conf,fstab			let b:comment_leader = '# '
  autocmd FileType tex				let b:comment_leader = '% '
  autocmd FileType mail				let b:comment_leader = '> '
  autocmd FileType vim				let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" toggle tagbar
nmap <F8> :TagbarToggle<CR>
