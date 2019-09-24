#!/bin/bash
# xcodeのセットアップ
xcode-select --install

# homebrewのinstall
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrewのcheck
brew update && brew upgrade && brew cleanup && brew doctor

# parallelのinstall
brew install parallel

# parallelの初期化
yes [will cite] | parallel --bibtex

# 並列でinstall
parallel -a ./src/formulae brew
parallel -a ./src/appstore mas install

# .gitignore_globalの作成
touch ~/.gitignore_global
cat ./src/gitignore_global >> ~/.gitignore_global

# nodenvのPATH通し
echo '# nodenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(nodenv init -)"' >> ~/.bash_profile

# 鯖室のproxyをbash/npm/gitにset/unsetするコマンド
echo '# sysken proxy' >> ~/.bash_profile
cat ./src/proxy.sh >> ~/.bash_profile

# vscodeのextensionをinstall
parallel -a ./src/vscode_ext.txt code --install-extension

# vscodeの設定をする
cat ./src/vscode_setting.json > ~/Library/Application\ Support/Code/User/settings.json

# docker dmg download
open https://download.docker.com/mac/stable/Docker.dmg
