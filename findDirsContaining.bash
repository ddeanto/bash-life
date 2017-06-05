files=$( find . -name "*.$1" | sort )

directories=()
for f in $files; do
  directory=$(dirname "${f}")

  exists=0
  for d in $directories; do
    if [ "$directory" == "d" ]

done
