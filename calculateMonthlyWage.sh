PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORK_DAY=20;

totalWorkingHour=0;

for ((day=0;day<$MAX_WORK_DAY;day++))
do
	isPresent=$((RANDOM%3));
	#echo $isPresent;

	case $isPresent in
		$PRESENT)
			totalWorkingHour=$(($totalWorkingHour+8));
		;;

		$PART_TIME)
			totalWorkingHour=$(($totalWorkingHour+4));
		;;
	esac;

done

salary=$(($totalWorkingHour * $WAGE_PER_HOUR));


echo "Employee Monthly wage : $ "$salary "USD (total work hour : $totalWorkingHour)(Working day : $day)";
