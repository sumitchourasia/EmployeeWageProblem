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

