is_prime() {
if [ $1 -lt 2 ]; then
return 1
fi
for ((i = 2; i <= $1 / 2; i++)); do
if [ $(( $1 % i )) -eq 0 ]; then
return 1
fi
done
return 0
}
read -p "Enter the starting number: " start
read -p "Enter the ending number: " end
count=0
echo "Prime numbers between $start and $end:"
for ((num = start; num <= end; num++)); do
if is_prime $num; then
((count++))
echo $num
fi
done
echo "Number of prime numbers between $start and $end: $count"
