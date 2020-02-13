function CalculateWagePerMonth()
{
	days=20
	CalculateDailyEmployeeWage
	dailywage=$?
	monthlywage=`expr $dailywage \* $days`
	return $monthlywage
}
















