for username_path in /Home/stud*; do
    username=$(basename "$username_path")
    new_home="/usr/$username"

    # Create the new home directory if it doesn't exist
    sudo mkdir -p "$new_home"
    
    # Move the home directory and update the user's home directory path
    sudo usermod -m -d "$new_home" "$username"

    # Set the new password for the user
    new_password="${username}123"
    echo -e "$new_password\n$new_password" | sudo passwd "$username"
done

