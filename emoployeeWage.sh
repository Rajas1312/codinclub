#!/bin/bash -x

echo "welcome t0 Employees wage computation program"

if [ $((RANDOM%2)) -eq 0 ]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi

