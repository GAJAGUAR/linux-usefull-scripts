#!/bin/bash

# Create key
echo "=> Write email address for SSH key"
read email
echo "=> Generating SSH key"
ssh-keygen -t rsa -b 4096 -C $email

# Start SSH agent
echo "=> Starting SSH agent background"
eval "$(ssh-agent -s)"

# Add SSH key to agent
echo "=> Adding the SSH key to the agent"
ssh-add ~/.ssh/id_rsa
