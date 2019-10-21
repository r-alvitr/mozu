brew tap rcmdnk/file

pkglist=()
  git
  nodenv
  node-build
  tree
  mas
  brew-file
)

cpkglist=(
  visual-studio-code
  chromium
  firefox
  vagrant
  virtualbox
  slack
  appcleaner
  google-japanese-ime
)

for i in ${pkglist[@]}; do
  brew install $i
done

for i in ${cpkglist[@]}; do
  brew cask install $i
done
