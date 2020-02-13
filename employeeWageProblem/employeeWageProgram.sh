
#!/bin/bash
set -x
#EMPLOYEE WAGE COMPUTATION PROGRAM IMPLEMENTATION

echo "EMPLOYEE WAGE COMPUTATION PROGRAM IMPLEMENTATION"


function AttendanceCheck()
{
	local present=$(( $RANDOM % 20 ))
	if [ "$present" != "0" ]
	then
        	echo "is present"
	else
        	echo "is absent"
	fi
	return $present
}


