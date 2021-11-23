call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bogado/file-line'
Plug 'vivien/vim-linux-coding-style'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'haya14busa/is.vim'
Plug 'joe-skb7/cscope-maps'
Plug 'ycm-core/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
Plug 'mhinz/vim-startify'
Plug 'rhysd/vim-clang-format'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
call plug#end()

source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/theme.vim
source $HOME/.config/nvim/general/nerdtree.vim
source $HOME/.config/nvim/general/ctags.vim
source $HOME/.config/nvim/general/general.vim
source $HOME/.config/nvim/keys.vim

