#!/bin/bash
echo "Welcome please guess the number of files in the directory"
read answer
echo "You guessed" $answer
files=$(ls -1 | wc -l)
function guess {
echo "Guess again"
}
while [[ $answer -ne $files ]]
do
if [[ $answer -gt $files ]]
then
echo "Too high"
fi
if [[ $answer -lt $files ]]
then
echo "Too low"
fi
guess
read answer
done
echo "You guessed it correctly great job!"
