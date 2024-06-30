calculate_grade() {
    if [ $1 -ge 90 ]; then
        grade="A"
    elif [ $1 -ge 80 ]; then
        grade="B"
    elif [ $1 -ge 70 ]; then
        grade="C"
    elif [ $1 -ge 60 ]; then
        grade="D"
    else
        grade="F"
    fi
    echo $grade
}

echo "Enter number of students:"
read no

# Declare arrays to store names, marks, and grades
declare -a names
declare -a marks
declare -a grades

for ((i=0; i<no; i++)); do
    echo "Enter student name:"
    read name
    echo "Enter student's mark:"
    read mark
    grade=$(calculate_grade $mark)

    # Store the data in arrays
    names[i]=$name
    marks[i]=$mark
    grades[i]=$grade

    echo "Student Name: $name"
    echo "Student Mark: $mark"
    echo "Student Grade: $grade"
done

# Print all students' information at the end
echo -e "\nSummary of all students:"
for ((i=0; i<no; i++)); do
    echo "Student Name: ${names[i]}"
    echo "Student Mark: ${marks[i]}"
    echo "Student Grade: ${grades[i]}"
    echo "------------------------"
done

