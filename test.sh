# Main Menu
# init() {
#     clear
#     date
#     echo '============================='
#     echo '          MAIN MENU          '
#     echo '============================='
#     echo '1. Volume Up'
#     echo '2. Volume Down'
#     echo '3. Mute Audio'
#     echo '4. Unmute Audio'
#     echo '5. Exit'
#     read -p 'Choose 1-5: ' input
# }

# Play/Pause
play_pause() {
    clear
    toggle=$(mocp -p)
    echo '-----------------------------'
    echo '          Play/Pause         '
    echo '-----------------------------'
    echo 'Play pause toggle are hit'
}


# Volume Up
volume_up() {
    clear
    mixer=$(amixer set Master 10%+)
    echo '-----------------------------'
    echo '          Volume Up          '
    echo '-----------------------------'
    echo 'Your volume is up by 10%!'
    echo $mixer

}

# Volume Down
volume_down() {
    clear
    mixer=$(amixer set Master 10%-)
    echo '-----------------------------'
    echo '          Volume Down        '
    echo '-----------------------------'
    echo 'Your volume is down by 10%!'
    echo $mixer
}

# Mute Audio
mute_audio() {
    clear
    mixer=$(amixer set Master mute)
    echo '-----------------------------'
    echo '          Mute Audio         '
    echo '-----------------------------'
    echo 'Your audio is muted'
    echo $mixer

}

# Unmute Audio
unmute_audio() {
    clear
    mixer=$(amixer set Master unmute)
    echo '-----------------------------'
    echo '        Unmute Audio         '
    echo '-----------------------------'
    echo 'Your audio is unmuted'
    echo $mixer
    
}

# while true;
# do
#     init

#     if [ $input -eq 1 ]
#     then
#         volume_up

#     elif [ $input -eq 2 ]
#     then
#         volume_down

#     elif [ $input -eq 3 ]
#     then
#         mute_audio

#     elif [ $input -eq 4 ]
#     then
#         unmute_audio

#     elif [ $input -eq 5 ]
#     then
#         echo 'Byee!!...'
#         exit

#     else
#         echo 'Choose number between 1-5'

#     fi
#     read -p 'Press [Enter] key to continue...'

# done
# echo '================='
# echo '      Hello      '
# echo '================='
# # amixer set Master $1
# echo 'my param is ' $1
# exit

"$@"