parallel -a ../src/formulae --dry-run brew
parallel -a ../src/appstore --dry-run mas install
parallel -a ../setup.sh --dry-run
parallel -a ../src/vscode_ext.txt --dry-run code --install-extension
