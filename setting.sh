#!/bin/sh

#アップデート
sudo apt update
sudo apt upgrade -y

#初期導入コマンド
sudo apt install -y curl vim nano openssh-server git 

#日本語環境install 
sudo apt -y install language-pack-ja-base language-pack-ja ibus-mozc
sudo update-locale LANG=ja_JP.UTF8
sudo apt -y install manpages-ja manpages-ja-dev
#タイムゾーンを日本に変更
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/locltime

#vim環境構築
mkdir ~/.vim
mkdir ~/.vim/colors
git clone https://github.com/tomasr/molokai ~/.vim/colors/molokai
cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim.colors

#任意のファイルのコピー
cp .vimrc ~/
