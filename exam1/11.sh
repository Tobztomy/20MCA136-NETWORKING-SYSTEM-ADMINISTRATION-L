for username in /home/stud*; do
username=$(basename "$username")
new_home="/usr/$username"
sudo usermod -m -d "$new_home" "$username"
new_password="${username}123"
echo -e "$new_password\n$new_password" | sudo passwd "$username"
done
