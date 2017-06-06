# this converts camelCase to underscore_case
underscore_case=$(echo $1 | sed -r 's/([a-z])([A-Z])/\1_\L\2/g')

# this converts underscore_case to camelCase
camelCase=$(echo $1 | sed -r 's/(_)([a-z])/\U\2/g')

printf "variable entered: $1\nunderscore_case: $underscore_case\ncamelCase: $camelCase\n"
