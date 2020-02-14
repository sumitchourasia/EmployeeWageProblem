
function DayDailyWageAndTotalWage()
{
	echo "enter the day" 
	read day
        CalculateDailyEmployeeWage
        dailywage=$?
        CalculateWagePerMonth
	echo "Day : $day " >> ./employeeWageProblem/DailyWageAndTotalWage.txt
        echo "Daily Wage : $dailywage " >> ./employeeWageProblem/DailyWageAndTotalWage.txt
        echo "Total Wage : $monthlywage " >> ./employeeWageProblem/DailyWageAndTotalWage.txt
}
