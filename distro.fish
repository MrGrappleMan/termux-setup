#!/bin/env fish

set options "Kali NetHunter" "Ubuntu 22.04 LXQt (Andronix)"
set urls "https://offs.ec" "https://githubusercontent.com"
set current 1

function draw_menu
    # Clear previous menu lines (adjust based on number of options)
    printf "\033[K"
    echo "--- Distro Selection Screen ---"
    for i in (seq (count $options))
        if test $i -eq $argv[1]
            # Highlight selected option with background color
            set_color -b blue -o white
            echo " [$i] $options[$i] "
            set_color normal
        else
            echo "  $i  $options[$i]"
        end
    end
    echo "Use arrow keys to move, 1-2 to select, or Enter to confirm."
end

# Main interaction loop
while true
    draw_menu $current
    
    # Read one character/sequence at a time
    read -n 1 -s key
    
    switch "$key"
        case \e\[A # Up Arrow
            set current (math "$current - 1")
            if test $current -lt 1; set current (count $options); end
        case \e\[B # Down Arrow
            set current (math "$current + 1")
            if test $current -gt (count $options); set current 1; end
        case 1 2 # Index keys
            set current $key
            break
        case "" # Enter key (empty string for read -n 1)
            break
    end
    # Move cursor back up to redraw the menu over itself
    printf "\033[5A" 
end

# Execution phase
set selected_url $urls[$current]
echo -e "\nInstalling $options[$current]..."

wget -O DistroInstaller $selected_url
chmod +x DistroInstaller
./DistroInstaller
