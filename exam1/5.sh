read -p "Enter The username:" username
read -sp "Enter The Password:" password
if [[ $username == "mca" && $password == "mca" ]]; then
echo -e "\nYou're Logged In\n"
elif [ $username != "mca" ]; then
echo -e "\nInvalid User Name\n"
else
echo -e "\nInvalid Password\n"
fi
