
#!/bin/bash
set -x
# employee wage computation program implementation
echo " welcome to the employee wage computation program "
 
function AttendanceCheck()
{
<<<<<<< HEAD
	local present=$(( $RANDOM % 20 ))
	if [ "$present" != "0" ]
	then
        	echo "employee is present"
	else
        	echo "employee is absent"
	fi
	return $present
=======
	echo "enter the wage : "
	read wage
	workhours=$(( $wage / 20 ))
	echo "work hour : $workhours"
	return $workhours
>>>>>>> useCase-7_Work_Hours
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
function CaseStatement()
{	
	
	echo "select the operation"
	echo "1 -  Attendance check"
	echo "2 -  Calculate_Daily_Employee_Wage"
	echo "3 - Part_Time_Wage"
	echo "4 - Calculate_Full_Month_Wage "
	echo "5 - calculate_Wage_Till_Working_hour_or_day "
	echo "6 - "
	read input
	while :
	do
	read input
	case $input in 
		1)
			AttendanceCheck
			;;
		2)
			CalculateDailyEmployeeWage
			dailywage=$?
			echo "daily wage : $dailywage"
			;;
		3)
			 PartTimeWage
			 parttimewage=$?
			 echo "part time wage : $parttimewage"
			 ;;
		4)
			CalculateWagePerMonth
			monthlywage=$?
			echo "monthly wage : $monthlywage"
			;;
	 	0)
			exit 0 
			;;
		esac
	done
}

function CalculateWagePerMonth()
{
	days=20
	CalculateDailyEmployeeWage
	dailywage=$?
	monthlywage=`expr $dailywage \* $days`
	return $monthlywage
}

function WagesTillWorkingHoursOrDays()
{
	echo "inside function"
	hoursworked=0
	daysworked=0
	totalwage=0
	times=0
	parttimewage=0
	while [ "$hoursworked" -lt "100" -a "$daysworked" -lt "20" -a "$times" -lt "20" ]
	do
		echo "inside while"
		times=$(($times + 1))
		AttendanceCheck
		attendance=$?	
		if [ "$attendance" -ne "0" ]
		then
			daysworked=$(($daysworked + 1))
			CalculateDailyEmployeeWage
			dailywage=$?
			hoursworked=$(( $hoursworked + 8 ))
			if [ "$hoursworked" -gt "100" ]
			then
				temp=$(( $hoursworked - 100 ))
				hoursworked=$(( $hoursworked - temp ))
				dailywage=0
				parttimewage=`expr $temp \* 20` 
			fi
			totalwage=$(( $totalwage + $dailywage + $parttimewage ))
		 fi
		 echo " "
	 done
	 return $totalwage	
}

function CalculateWorkHours()
{
	echo "enter the wage : "
	read wage
	workhours=$(( $wage / 20 ))
	echo "work hour : $workhours"

}




