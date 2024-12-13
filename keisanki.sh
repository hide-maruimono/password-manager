#!/bin/bash
#enter 2 numbers
echo "enter 2 numbers:"
read a
read b

echo "Choose an arithmetic operation (+, -, *, /):"
read operation


if [ "$operation" == "+" ]; then
	echo "the result: $((a + b))"
elif [ "$operation" == "-" ]; then
        echo "the result: $((a - b))"

elif [ "$operation" == "*" ]; then
        echo "the result: $((a * b))"

elif [ "$operation" == "/" ]; then
        echo "the result: $((a / b))"

else 
	echo "zannnenn kotaehaarimasen"

fi
