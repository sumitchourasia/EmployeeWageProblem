
function WagesTillWorkingHoursOrDays()
{
	hoursworked=0
	daysworked=0
	totalwage=0
	times=0
	parttimewage=0
	while [ "$hoursworked" -lt "100" -a "$daysworked" -lt "20" -a "$times" -lt "20" ]
	do
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
	 done
	 return $totalwage	
}

















