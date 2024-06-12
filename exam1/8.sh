echo Enter the number
read a
echo Enter the number
read b
c=$(expr $a + $b)
echo Addition= $c
d=$(expr $a - $b)
echo subtraction=$d
e=$(expr $a \* $b)
echo Multipliccation=$e
