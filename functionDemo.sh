#!/bin/bash

function myFunction() {
	sum=$(($1+$2));
	echo $1+$2=$sum;
}

result=$(myFunction $((RANDOM%10)) $((RANDOM%10)) )

echo $result;
