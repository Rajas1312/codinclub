#!/bin/bash -x

echo "welcome t0 Employees wage computation program"

if [ $((RANDOM%2)) -eq 0 ]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
wage_per_hour=20
full_day=8
daily_wage=$((wage_per_hour*full_day))
echo "Daily wage is" $daily_wage
