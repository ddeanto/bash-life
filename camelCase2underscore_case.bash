# proof of concept using working directory as input
#
# note: concept not yet proved, but it's a start

cnvrtDirection=$1

echo "Welcome to the Kase Konverter, a spectacular display of modern human ingenuity. Please enter 1 to convert from camelCase to underscore_case or 2 to convert from underscore_case to camelCase:"

read cnvrtDirection

while [ $cnvrtDirection != 1 -a $cnvrtDirection != 2 ];
do
	echo "That is literally not an option. Try again:"
	read cnvrtDirection
done

if [ $cnvrtDirection="1" ]
then
	# this converts camelCase to underscore_case
	#underscore_case=$(echo $1 | sed -r 's/([a-z])([A-Z])/\1_\L\2/g')
	underscore_case=$(pwd | sed -r 's/([a-z])([A-Z])/\1_\L\2/g')
	mv . "$underscore_case"
else
	# this converts underscore_case to camelCase
	camelCase=$(pwd | sed -r 's/(_)([a-z])/\U\2/g')
	mv . "$camelCase"
fi

pwd







printf "variable entered: $1\nunderscore_case: $underscore_case\ncamelCase: $camelCase\n"



read 
