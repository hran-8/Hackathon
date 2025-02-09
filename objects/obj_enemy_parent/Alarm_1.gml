image_blend = c_white;

if (hp <= 0) {
    audio_play_sound(snd_splat, 0, false, 1, 0, random_range(0.8,1.2));
    instance_destroy();
    player_obj.add_xp(xp_value);
}