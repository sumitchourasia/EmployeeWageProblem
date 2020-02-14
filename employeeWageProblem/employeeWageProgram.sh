
function DailyWageAndTotalWage()
{
	CalculateDailyEmployeeWage
	dailywage=$?
	CalculateWagePerMonth
	echo "Daily Wage : $dailywage " >> ./employeeWageProblem/DailyWageAndTotalWage.txt
	echo "Total Wage : $monthlywage " >> ./employeeWageProblem/DailyWageAndTotalWage.txt
}

