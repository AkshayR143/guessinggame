function Guessthecount {

local cnt=$(ls . | wc -w) 
local compare=1
local ans=0

while [[ $compare -eq 1 ]]
do
	echo "how many files are there in this folder?"
	read ans
	if [[ $ans -eq $cnt ]]
		
		then compare=0
		echo "you have guessed correct number of files! :$ans"
	elif [[ $ans -lt $cnt ]]
		then
		echo "Sorry! Your guess is wrong and it is too high"
	else
		echo "Sorry! Your guess is wrong and it is too low"
	fi
done


}

Guessthecount
