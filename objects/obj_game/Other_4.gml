
if (room == Room1) {
    audio_sound_gain(snd_beginning, 0.15, 0);
    audio_play_sound(snd_beginning, 0, true);
    audio_sound_gain(snd_zombie, 0.4, 0);
    audio_sound_gain(snd_splat, 0.3, 0);
    audio_sound_gain(snd_slash, 0.6, 0);

}
else if (room == Room2) {
    audio_sound_gain(snd_start, 0.15, 0);
    audio_play_sound(snd_start, 0, true);
}
