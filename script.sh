#!/bin/bash

echo "Enter the filename:"
read filename

if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    echo "The file '$filename' does not exist."
fi

echo "Enter your salary:"
read salary

if [ "$salary" -lt 30000 ]; then
    echo "No tax."
elif [ "$salary" -eq 30000 ]; then
     tax=$((salary * 5 / 100))
     echo "tax is 5%: $tax"
elif [ "$salary" -le 40000 ];then
    tax=$((salary * 10 / 100))
    echo "Tax is 10%: $tax"
else
    tax=$((salary * 15 / 100))
    echo "Tax is 15%: $tax"
fi

echo "Enter your age:"
read age

if [ "$age" -lt 13 ]; then
    echo "You are a Child."
elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then
    echo "You are a Teenager."
elif [ "$age" -ge 20 ] && [ "$age" -le 60 ]; then
    echo "You are an Adult."
else
    echo "You are Oldage."
fi
