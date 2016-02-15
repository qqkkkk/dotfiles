if has("syntax")
    syntax on
endif

set number
set title
set ambiwidth=double
set smartindent
set hidden
set virtualedit=block
set backspace=indent,eol,start

"tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set nocompatible
filetype off

if has('vim_starting')
    "bundleで管理するディレクトリを指定
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

"NeoBundle自体をNeoBundleで管理

NeoBundleFetch 'Shougo/neobundle.vim'

"ここにプラグインを追加する
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'

"jedi-vim
NeoBundle 'davidhalter/jedi-vim'

"vim-quickrun
NeoBundle 'thinca/vim-quickrun'

"surround.vim
NeoBundle 'tpope/vim-surround'

"emmet-vim
NeoBundle 'mattn/emmet-vim'

"yankround.vim
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()
"Required
filetype plugin indent on

"NERDTree shortcut
nnoremap <silent><C-e> :NERDTreeToggle<CR>
