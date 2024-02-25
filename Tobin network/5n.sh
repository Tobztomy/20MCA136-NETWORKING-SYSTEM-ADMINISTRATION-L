echo "Enter a string: "
read s
echo "$s" > temp
rvs="$(rev < temp)"

if [ "$s" = "$rvs" ]; then
    echo "It is a palindrome"
else
    echo "It is not a palindrome"
fi
