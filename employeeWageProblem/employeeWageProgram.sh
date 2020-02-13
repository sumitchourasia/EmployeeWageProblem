function CalculateDailyEmployeeWage()
{
	wageperhour=20
	hoursperday=8
	dailywage=`expr $wageperhour \* $hoursperday`
	return $dailywage
}

