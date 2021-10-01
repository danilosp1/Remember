room_restart();
if(audio_is_playing(sound1)){
	audio_stop_sound(sound1);
}
audio_play_sound(sound0, 1, true);