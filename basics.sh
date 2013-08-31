#!/bin/bash

echo "hello, $USER.  You are currently in $PWD"

echo -n '$USER='
echo "$USER"
echo "\$USER=$USER" #this line does the same as the last two

X=""
if [ -n "$X" ]; then		#-n tests to see if the argument is non empty
	echo "the variable X is not the empty string"
fi

# operators
# -n == non zero length (1 operator)
# -z == zero length (1 operator)
# -d == dir exists (the dir as operand)
# -f == there exists a file with operand's name (operand)
# -eq == the operands are integers and are equal (2 operands)
# -neq == opposite of -eq (2 operands)
# = the operands are equal [strings] (2 operands)
# != the opposite of =
# -lt op 1 is less than op 2 (2 operands, integers)
# -gt op 1 is greater than op2
# -ge == >=
# -le == <=
