wakeup/brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \
	brew update && brew upgrade && brew cleanup && brew doctor && brew cask
	echo "🎉 wakeup homebrew🍺"

wakeup/parallel:
	brew install parallel && \
	echo "🎉 wakeup parallel📝"

install:
	@parallel -a ./src/list/formulae brew && \
	echo "🎉 brew formulae installed🏎"
	@parallel -a ./src/list/appstore mas install && \
	echo "🎉 App Store application installed🍎"

setup/git:
	@touch ~/.gitignore_global && \
	cat ./src/gitignore_global >> ~/.gitignore_global && \
	git config --global core.excludesfile ~/.gitignore_global
	@touch ~/.gitcommit-template && \
	cat ./src/commit-template >> ~/.gitcommit-template && \
	git config --global commit.template ~/.gitcommit-template
	@echo "🎉 setup git commit template📜" && \
	echo "🎉 setup gitignore_global📜"

setup/nodenv:
	@echo '# nodenv' >> ~/.bash_profile && \
	echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bash_profile && \ # なぜか$Hと$Pがエスケープされる
	echo 'eval "$(nodenv init -)"' >> ~/.bash_profile && \ # なぜかeval以降がエスケープされていた
	echo "🎉 setup nodenv🎗"

setup/proxy:
	@echo '# sysken proxy' >> ~/.bash_profile && \
	cat ./src/proxy.sh >> ~/.bash_profile && \
	echo "🎉 setup proxy for sysken🐟"

setup/tt:
	@touch ~/.inputrc && \
	cat ./src/inputrc >> ~/.inputrc && \
	echo "🎉 setup tab comp📜"
	@defaults write com.apple.finder AppleShowAllFiles TRUE && \
	killall Finder &&\
	echo "🎉 setup dot file show📜"

setup/vscode:
	@parallel -a ./src/list/vscode_ext.txt code --install-extension
	@touch ~/Library/Application\ Support/Code/User/settings.json && \
	cat ./src/vscode_setting.json > ~/Library/Application\ Support/Code/User/settings.json
	echo "🎉 setup VSCode✍️"

get/docker:
	@open https://download.docker.com/mac/stable/Docker.dmg && \
	echo "🎉 get docker dmg🐳"

magic:
	@make wakeup/brew && \
	make wakeup/parallel && \
	make install
	@make setup/gitignore
	@make setup/nodenv
	@make setup/proxy
	@make get/docker
	echo "do it later > make setup/vscode"
