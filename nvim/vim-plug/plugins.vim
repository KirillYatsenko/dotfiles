" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bfrg/vim-cpp-modern'
" Plug 'vimcolorschemes/vimcolorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'haya14busa/is.vim'
Plug 'joe-skb7/cscope-maps'
Plug 'rhysd/vim-clang-format'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'bogado/file-line'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'chentau/marks.nvim'
" Plug 'antoinemadec/coc-fzf'
Plug 'justinmk/vim-syntax-extra'
Plug 'kergoth/vim-bitbake'
Plug 'mfukar/robotframework-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
call plug#end()
