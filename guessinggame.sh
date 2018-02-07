#!/bin/bash

echo 'Hello'
sleep 1
echo 'I want to play a game...'
sleep 2
echo 'Try to guess - how many files are in the current directory?'
read -p 'Your answer: ' guess
actual=$(ls -l | wc -l)
until [[ $guess -eq $actual ]]; do
       if [[ $guess -lt $actual ]]; then
	       read -p 'There are more, try again: ' guess
       else
	       read -p 'There are less, try again: ' guess
       fi	       
done
echo 'Correct!'
