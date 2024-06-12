echo "Enter a decimal number: "
read number
binary_number=""
while [ "$number" -gt 0 ]; do
binary_number="$binary_number$((number % 2))"
number=$((number / 2))
done
echo "Binary representation: $binary_number"
