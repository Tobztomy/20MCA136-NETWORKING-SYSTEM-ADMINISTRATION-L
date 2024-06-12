echo "Name of student:"
read name
echo "student registration number:"
read student registration number
echo "Enter Marks obtained in DFS: "
read m1
echo "Enter marks obtained in OOP: "
read m2
echo "Enter marks obtained in OS: "
read m3
total=$(expr $m1 + $m2 + $m3)
avg=$(expr $total / 3)
echo "Total: $total"
echo "Average: $avg"
if [ $avg -ge 90 ]; then
echo "Grade = S"
elif [ $avg -le 90 ] && [ $avg -ge 80 ]; then
echo "Grade = A"
elif [ $avg -le 80 ] && [ $avg -ge 60 ]; then
echo "Grade = B"
elif [ $avg -le 60 ] && [ $avg -ge 40 ]; then
echo "Grade = P"
else
echo "Grade = F"
fi
