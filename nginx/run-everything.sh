#!/bin/bash

set -e

# Function to run a script and handle errors
run_script() {
    local script_name=$1
    echo ""
    echo "Running $script_name..."
    echo "--------------------------------"
    if ! bash "$script_name"; then
        echo "Error occurred while running $script_name"
        exit 1
    fi
    echo "$script_name ran successfully."
    echo "--------------------------------"
}

# Run all scripts in order
run_script "bash-scripts/install.sh"
run_script "bash-scripts/start.sh"
run_script "bash-scripts/configure.sh"
run_script "bash-scripts/examine-config.sh"

echo ""
echo "All scripts ran successfully. NGINX is installed and configured."
