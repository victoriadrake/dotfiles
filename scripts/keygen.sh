#!/bin/bash

# Generate the key
ssh-keygen -t ed25519
# Add it to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# Set appropriate permissions
chmod 600 ~/.ssh/id_ed25519
# Show the public key so you can copy it to GitHub
cat ~/.ssh/id_ed25519.pub
