#!/usr/bin/env bash

if ! command -v pip; then
    echo "Please install Python and Pip"
    exit 1
fi

# Install necessary packages
pip install --user \
    ansible \
    ansible-lint

# Update PATH with new install
export PATH="$HOME/.local/bin:$PATH"

# Add necessary collections
ansible-galaxy collection install \
    community.general