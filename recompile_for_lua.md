因为Ubuntu15.04系统自带Vim不支持Lua，所以得自己编译安装。

1.卸载系统自带的vim.
===================

    $ sudo apt-get remove vim vim-runtime  vim-tiny vim-common vim-gui-common
    $ sudo apt-get purge vim vim-runtime  vim-tiny vim-common vim-gui-common

2.安装依赖文件。
===============

    $ sudo apt-get install luajit libluajit-5.1 libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial

3.下载vim代码。
=============

    $ cd /tmp
    $ git clone https://github.com/vim/vim.git

4.编译安装。
===========

    $ ./configure --with-features=huge \
    --enable-cscope \
    --enable-rubyinterp \
    --enable-largefile \
    --disable-netbeans \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7/config \
    --enable-perlinterp \
    --enable-luainterp \
    --with-luajit –enable-fail-if-missing \
    --with-lua-prefix=/usr \
    --enable-gui=gnome2 --enable-cscope --prefix=/usr

    $　make VIMRUNTIMEDIR=/usr/share/vim/vim74
    $　sudo make install
