PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORK_DAY=20;
MAX_WORK_HOUR=40;

totalWorkingHour=0;
day=0;
while [[ $day -lt $MAX_WORK_DAY && $totalWorkingHour -lt $MAX_WORK_HOUR ]]
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
	((day++));
done

salary=$(($totalWorkingHour * $WAGE_PER_HOUR));


echo "Employee Monthly wage : $ "$salary "USD (total work hour : $totalWorkingHour)(Working Day : $day)";
