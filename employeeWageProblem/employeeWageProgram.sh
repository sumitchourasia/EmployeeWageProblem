
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
	 	0)
			exit 0 
			;;
		esac
	done
		
}

