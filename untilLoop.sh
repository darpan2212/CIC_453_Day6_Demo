cnt=100;
until [ $cnt -lt 20 ]
do
	echo $cnt;
	((cnt--));
done

echo "until loop is terminated"
