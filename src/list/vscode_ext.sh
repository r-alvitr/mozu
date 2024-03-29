pkglist=(
  bung87.vscode-gemfile
  CoenraadS.bracket-pair-colorizer
  dbaeumer.vscode-eslint
  eg2.vscode-npm-script
  esbenp.prettier-vscode
  formulahendry.auto-rename-tag
  ICS.japanese-proofreading
  kaiwood.endwise
  ms-azuretools.vscode-docker
  MS-CEINTL.vscode-language-pack-ja
  ms-mssql.mssql
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode-remote.remote-ssh-explorer
  ms-vscode-remote.remote-wsl
  ms-vscode-remote.vscode-remote-extensionpack
  oderwat.indent-rainbow
  PKief.material-icon-theme
  rebornix.ruby
  shd101wyy.markdown-preview-enhanced
  vincaslt.highlight-matching-tag
  yzhang.markdown-all-in-one
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
