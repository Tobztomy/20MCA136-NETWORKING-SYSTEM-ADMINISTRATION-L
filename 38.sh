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

# Convert sorted_numbers string back to an array
sorted_array=($sorted_numbers)

# Get the length of the array
len=${#sorted_array[@]}

# Print elements up to the third last element
for ((i=0; i<len-2; i++)); do
  echo -n "${sorted_array[i]}"
done

# Swap the second last and last elements
last=${sorted_array[$len-1]}
second=${sorted_array[$len-2]}
sorted_array[$len-2]=$last
sorted_array[$len-1]=$second

# Print the second last and last elements concatenated
echo -n "${sorted_array[$len-2]}${sorted_array[$len-1]}"
echo

# Print the last and second last elements separately
echo "${sorted_array[$len-2]}"
echo "${sorted_array[$len-1]}"

