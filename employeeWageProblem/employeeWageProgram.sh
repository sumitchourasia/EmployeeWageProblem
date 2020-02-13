function PartTimeWage()
{
        part_time_hour=8
        wage_per_hour=20
        part_time_wage=`expr $part_time_hour \* $wage_per_hour`
        return $part_time_wage
}

