#!/bin/bash

# Function to read a value from a specific section in .config.ini
# Arguments: section_name variable_name
function read_config_value {
    local section_name="$1"
    local variable_name="$2"
    local config_file=".config.ini"

    # Check if the config file exists
    if [ ! -f "$config_file" ]; then
        echo "Error: Configuration file $config_file not found."
        exit 1
    fi

    # Read the value from the config file using awk
    local value=$(awk -F '=' -v section="$section_name" -v var="$variable_name" '$0 ~ ("\\[" section "\\]") { in_section = 1 } in_section && $1 == var { print $2; exit }' "$config_file" | xargs)
    
    # Print the value
    echo "$value"

}


# Example usage:
# Read the USERNAME from the [GitHub] section
# USERNAME=$(read_config_value "GitHub" "USERNAME")
# Print the USERNAME value
# echo "GitHub Username: $USERNAME"

# Read the TOKEN from the [GitHub] section
# TOKEN=$(read_config_value "GitHub" "TOKEN")
# Print the TOKEN value
# echo "GitHub Token: $TOKEN"

