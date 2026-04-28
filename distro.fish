#!/bin/env fish

# Enter distro scripts directory
cd
cd termux-setup/distro/

# 1. Gather and sort all .fish files in the current directory
set -l files (ls *.fish | sort)
set -l count (count $files)

if test $count -eq 0
    echo "❌ No .fish scripts found in this directory."
    return 1
end

# 2. Selection screen

while true
    clear
    echo "📂 Select the distro to install:"
    echo "-----------------------------------"
    echo "[0] Quit"
    #  Display files alphabetically starting from index 1
    for i in (seq $count)
        # Remove .fish extension for the display name
        set -l display_name (string replace -r '\.fish$' '' $files[$i])
        echo "[$i] $display_name"
    end

    # Prompt for user selection
    echo "-----------------------------------"
    read -l -p "echo 'Enter selection: '" choice

    # 4. Handle Logic
    if test "$choice" = "0"
        echo "Exiting..."
        break
    else if test "$choice" -ge 1 -a "$choice" -le $count
        set -l selected_file $files[$choice]
        echo "⚡ Executing $selected_file..."
        echo "-----------------------------------"
        source $selected_file
        echo "-----------------------------------"
        echo "✅ Execution finished."
    else
        echo "⚠️ Invalid selection: Input must be between 0 and $count."
    end
end


# Invoke the function
script_selector