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
filetype off

if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))


call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')

"jedi-vim
call dein#add('davidhalter/jedi-vim')

"vim-quickrun
call dein#add('thinca/vim-quickrun')

"surround.vim
call dein#add('tpope/vim-surround')

"emmet-vim
call dein#add('mattn/emmet-vim')

"yankround.vim
call dein#add('LeafCage/yankround.vim')
call dein#add('kien/ctrlp.vim')

"lightline.vim
call dein#add('itchyny/lightline.vim')


call dein#end()
call dein#save_state()

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


"NERDTree shortcut
nnoremap <silent><C-e> :NERDTreeToggle<CR>
