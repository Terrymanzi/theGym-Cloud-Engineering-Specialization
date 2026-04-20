#!/bin/bash
today="$(date +%Y-%m-%d)"
homeDirectory="exercise-3-playground"
cleanup_desktop() {
    #create the folder on the desktop
    cd $homeDirectory
    mkdir "${today}"
    mv "*/" "${today}/"

}

cleanup_desktop terry







-----------------------------------------------------------------------------------

#!/bin/bash

# Set your “Desktop” folder (exercise-3-playground in your case)
desktop="exercise-3-playground"

# Get today’s date in YYYY-MM-DD format
today=$(date +%Y-%m-%d)

# Define the cleanup function
cleanup_desktop() {
    cd "$desktop" || exit 1       # go to Desktop; exit if it fails

    # Create folder for today if it doesn’t exist
    mkdir -p "$today"

    # Loop over all items in the Desktop folder
    for item in *; do
        # Skip folders that match a date pattern
        if [[ -d "$item" && "$item" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
            continue
        fi

        # Move only regular files
        if [[ -f "$item" ]]; then
            mv "$item" "$today/"
            echo "Moved $item to $today/"
        fi
    done
}

# Call the function
cleanup_desktop