#!/bin/bash
set -x
# employee wage computation program implementation
echo " welcome to the employee wage computation program "
 
function AttendanceCheck()
{
	local present=$(( $RANDOM % 20 ))
	if [ "$present" != "0" ]
	then
        	echo "employee is present"
	else
        	echo "employee is absent"
	fi
	return $present
}

function CalculateDailyEmployeeWage()
{
        wageperhour=20
        hoursperday=8
        dailywage=`expr $wageperhour \* $hoursperday`
        return $dailywage
}

function PartTimeWage()
{
        part_time_hour=8
        wage_per_hour=20
        part_time_wage=`expr $part_time_hour \* $wage_per_hour`
        return $part_time_wage
}

