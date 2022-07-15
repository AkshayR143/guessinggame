
#!/usr/bin/env bash

echo "Welcome to Unix Guessing game"

function takefeed {
	echo "Please enter the num of files in the cur_dir:"
	read guess
    files=$(ls -1 | wc -l)
}

takefeed

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	takefeed
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
