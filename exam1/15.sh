if [ $# -eq 0 ]
then
echo "Please try again with a valid argument";
exit
fi
echo "Selected process ID is: $1"
ps -q $1 -axu
