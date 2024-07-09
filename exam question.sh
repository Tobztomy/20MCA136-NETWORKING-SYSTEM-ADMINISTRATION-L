
# Define the array
number=(5 4 3 2 1 6 8 9 7)

# Print the original array without spaces
for num in "${number[@]}"; do
  echo -n "$num"
done

# Print a newline for clarity
echo

# Sort the array and store the result
sorted_numbers=$(echo "${number[@]}" | tr ' ' '\n' | sort -n | tr '\n' ' ')

# Print the sorted array without spaces
echo -n "$sorted_numbers"

# Print a newline at the end
echo

# Get the length of the array
len=${#number[@]}

# Print elements up to the third last element
for ((i=0; i<"$len-2"; i++)); do
  echo -n "${number[i]}"
done


last=${number[$len-1]}
second=${number[$len-2]}
temp=$last
last=$second
second=$temp
# Print the second last and last elements concatenated
echo -n "$second$last"
echo 

# Print the last and second last elements separately
echo "${number[$len-2]}"
echo "${number[$len-1]}"
