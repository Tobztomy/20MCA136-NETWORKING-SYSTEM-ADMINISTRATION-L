# Author : Tobin K Tomy
echo "Enter the string: "
read s
echo "$s" > temp
rvs="$(rev temp)"
if [ "$s" = "$rvs" ]
then
    echo "It is a palindrome"
else
    echo "It is not a palindrome"
fi


