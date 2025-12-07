#!/bin/bash

# Define the path to the user list file inside the container
USER_LIST="/tmp/user_list.txt"

echo "Starting user creation..."

# Read the file line by line
while IFS= read -r USERNAME
do
  # Skip empty lines or lines starting with a comment (#)
  if [[ -z "$USERNAME" || "$USERNAME" =~ ^# ]]
  then
    continue
  fi

  # Check if the user already exists before trying to create them
  if id "$USERNAME" &>/dev/null; then
    echo "User $USERNAME already exists, skipping."
  else
    # Create the user without a home directory (-M) and with a default shell (-s /bin/bash)
    # The -s option is useful for making the user interactive if you exec into the container.
    # The -p flag sets the password (here we use a dummy password, or better, no password)
    useradd -m -s /bin/bash "$USERNAME"
    echo "User $USERNAME created."
  fi

done < "$USER_LIST"

echo "User creation complete."

# Cleanup: Remove the user list and script after creation for security/tidiness
rm -f "$USER_LIST"
rm -f /add_users.sh