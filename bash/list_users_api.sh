#!/bin/bash

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
# Path to the .config.ini file
CONFIG_FILE=".config.ini"

# Check if the config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file $CONFIG_FILE not found."
    exit 1
fi

# Read the USERNAME and TOKEN values from the config file using awk
USERNAME=$(awk -F '=' '/^\[GitHub\]/{flag=1; next} /^\[.*\]/{flag=0} flag && /^USERNAME/ {print $2}' "$CONFIG_FILE" | xargs)
TOKEN=$(awk -F '=' '/^\[GitHub\]/{flag=1; next} /^\[.*\]/{flag=0} flag && /^TOKEN/ {print $2}' "$CONFIG_FILE" | xargs)
#USERNAME=$(awk -F '=' '/^USERNAME/ {print $2}' "$CONFIG_FILE")

echo $USERNAME
echo $TOKEN
# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"
    echo $url
    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
    #collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"
    collaborators="$(github_api_get "$endpoint")"

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access
