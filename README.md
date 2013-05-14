Configure git

git config --global user.name "Your Name"
git config --global user.email you@example.com


Create a new repository on the command line

touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/DeanSinaean/vimdev.git
git push -u origin master

Push an existing repository from the command line

git remote add origin https://github.com/DeanSinaean/vimdev.git
git push -u origin master

//installed syntastic as a pathogen bundle
https://github.com/scrooloose/syntastic
or 
.vim/bundle/syntastic/README.md
:help syntastic

//installed tagbar,key tt
https://github.com/majutsushi/tagbar

//installed golang compiler,golang is call each time a go file is written.
https://github.com/rjohnsondev/vim-compiler-go
only .vim/compiler/golang.vim is involved

//install go/misc/vim
to make godoc working, make sure godoc is available under your current shell env.
export PATH=$PATH:/your-go-bin-path

//installed powerline
git clone git://github.com/Lokaltog/vim-powerline.git

//installed cscope ttf-dejavu vim-doc
apt-get install cscope ttf-dejavu vim-doc

//installed visualmark
use mm to book mark
use <F2> and shift <F2> to browse
use <F2> and 
