#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [ -d "$SCRIPTPATH/bin/_php" ]
then
  cd $SCRIPTPATH/bin/_php;
else
  echo "$SCRIPTPATH/bin/_php was not found. Abort!!!";
  exit;
fi

composer install

if grep -Fxq "$FILENAME" my_list.txt
then
    echo
else
  echo 'export PATH="~/craft-cli/bin:$PATH"' >> ~/.bash_profile
fi

echo "craft-cli was successfully installed!"; echo

