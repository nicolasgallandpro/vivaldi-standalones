#!/bin/sh

if [ $# -eq 0 ]
  then
  echo "******* choose a name for the standalone app"

else
  echo $(pwd)
  mkdir $1
  cd $1
  _pwd=$(pwd)
  cp -r /Applications/Vivaldi.app .
  echo "Create Apple Script (save as 'Application') :"
  echo "do shell script \"open -na $_pwd/Vivaldi.app --args --user-data-dir='$_pwd/User Data' \" "
fi
