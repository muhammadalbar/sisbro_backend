mocp -S

play_pause() {
	clear
	toggle=$(mocp -p)
	echo '-----------------------------'
	echo '          Play/Pause         '
	echo '-----------------------------'
	echo 'Play pause toggle are hit'
}

volume_up() {
	clear
	mixer=$(amixer set Master 10%+)
	echo '-----------------------------'
	echo '          Volume Up          '
	echo '-----------------------------'
	echo 'Your volume is up by 10%!'
	echo $mixer
}

volume_down() {
	clear
	mixer=$(amixer set Master 10%-)
	echo '-----------------------------'
	echo '          Volume Down        '
	echo '-----------------------------'
	echo 'Your volume is down by 10%!'
	echo $mixer
}

mute_audio() {
	clear
	mixer=$(amixer set Master mute)
	echo '-----------------------------'
	echo '          Mute Audio         '
	echo '-----------------------------'
	echo 'Your audio is muted'
	echo $mixer
}

unmute_audio() {
	clear
	mixer=$(amixer set Master unmute)
	echo '-----------------------------'
	echo '        Unmute Audio         '
	echo '-----------------------------'
	echo 'Your audio is unmuted'
	echo $mixer
}
"$@"
