#!/bin/bash -x

echo "welcome t0 Employees wage computation program"
Employee_part_time=1
Employee_full_time=2

total_working_days=0
total_wage=0
total_working_hrs=0

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

for ((i=1; i<=20; i++))
do
	j=$((i*8))
	echo "number of hrs worked " $j
	if [ $j -le 100 ]
	then
		echo $daily_wage
	fi
done

hours(){
	echo "the work hours for full timer is" $full_day
	echo "the work hours for part timer is" $part_time_hr

}

hours
getEmployeeWage(){
	case $1 in
		$Employee_part_time) time1=8;;
		$Employee_full_time) time1=8;;
		*) time1=0;;
	esac
	echo $time1

}
#calculate wage for each day
while [ $total_working_days -lt $working_days ]
do
	((total_working_days++))
	time1=$( getEmployeeWage $((RANDOM%3)));
	tempWage=$((time1*wage_per_hour));
	total_working_hrs=$((total_working_hrs+time1));
	total_wage=$((totalWage+tempWage));
done

echo "total wage" $total_wage
