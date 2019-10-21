pkglist=(
  425424353
  1278508951
  497799835
)

for i in ${pkglist[@]}; do
  mas install $i
done
