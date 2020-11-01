#!/bin/bash -x

echo "welcome t0 Employees wage computation program"
Employee_part_time=1
Employee_full_time=2

if [ $((RANDOM%2)) -eq 0 ]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
wage_per_hour=20
full_day=8
daily_wage=$((wage_per_hour*full_day))
echo "Daily wage for full time employee is" $daily_wage

part_time_hr=8
working_days=20

echo "solving with switch/case statement"

case $Employee_part_time in
	$Employee_part_time) month_wage=$((daily_wage*working_days));;
	$Employee_full_time) month_wage=$((daily_wage*working_days));;
			*) month_wage=0;;
esac
	echo $month_wage;

