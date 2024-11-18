#!/bin/bash

for current_num in 1 2 3 4 5
do
	echo $current_num
	sleep 1
done

echo "Done 1"

for current_num in {1..10}
do
	echo $current_num
	sleep 1
done

echo "Done 2"
