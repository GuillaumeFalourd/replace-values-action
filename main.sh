#!/bin/bash -l

set -euo pipefail

main() {

  local FILE_PATH="$FILE_PATH";
  local PARAMETERS="$PARAMETERS";

  echo "FILE_PATH:$FILE_PATH"
    
  SAVEIFS=$IFS                      # Save current IFS (Internal Field Separator)
  IFS=$'\n'                         # Change IFS to newline char
  PARAMETERS_VALUES=($PARAMETERS)   # split the `parameters` string into an array by the same name
  IFS=$SAVEIFS                      # Restore original IFS

  for (( i=0; i<${#PARAMETERS_VALUES[@]}; i++ ))
  do
    echo ""
    echo "PARAMETERS_VALUES: " ${PARAMETERS_VALUES[$i]}
    readarray -d :: -t VALUES <<< "${PARAMETERS_VALUES[$i]}"
    declare -p VALUES  
    CURRENT_VALUE=${VALUES[0]}
    NEW_VALUE=${VALUES[2]} | sed 's/$//g' | sed 's/\n//g'
    echo "🔍 CURRENT_VALUE: $CURRENT_VALUE"
    echo "🔎 NEW_VALUE: $NEW_VALUE"
    sed -i.back "s|$CURRENT_VALUE|$NEW_VALUE|g" $FILE_PATH
    echo "✅ CURRENT_VALUE replaced by NEW_VALUE"
  done
}

main