cnt=1;
while [ $cnt -lt 20 ]
do
	echo $cnt;
	((cnt++));
done

echo "while loop is terminated"
