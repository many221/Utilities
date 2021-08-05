#!/bin/bash 
 
# runs add and commit files GitHub

echo Please choose a file and write a message to add and commit 

#has you select the file you want to commit
select file in "$search_dir"./*

do

#confirms the its the file you want
echo You have chosen $file to add and commit.
 
echo What would you like to add as a note

#gets the notes you want to add to git file
read m1

git add $file

git commit $file -m "{$m1}"

echo Congratulations you have "done" your daily commits

#yes or no feature if you want to commit more files
read -p "Continue with another file (y/n)?" choice
case "$choice" in 
  y|Y ) ;; #sinces its empty it will just pass to the done to repeat the whole script
  n|N ) exit ;; #stops the script from running again
  * ) echo "invalid";;
esac

done
