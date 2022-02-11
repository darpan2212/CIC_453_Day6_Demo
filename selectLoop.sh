echo "How many planets are there in solar system?"

select op in 5 8 9 11
do
	if [ $op -eq 8 ]
	then
		echo "$op is the right answer";
	else
		echo "$op is the wrong answer";
	fi
	break;
done
