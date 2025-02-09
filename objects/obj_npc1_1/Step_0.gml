if (instance_exists(obj_dialog)) exit;
    
if (instance_number(obj_enemy_parent) == 0 && flag == -1) {
    audio_stop_sound(snd_start);
    audio_sound_gain(snd_beginning, 0, 0);
    audio_play_sound(snd_beginning, 0, true);
    audio_sound_gain(snd_beginning, 0.15, 10000);
    flag = 0;
}

if (instance_exists(player_obj) && distance_to_object(player_obj) < 8 && instance_number(obj_enemy_parent) == 0) {
    can_talk = true; 
    if (keyboard_check_pressed(input_key)) {
        if (dialog_done < 0) {
            audio_play_sound(snd_pop, 0, false);
            create_dialog(dialog);
            dialog_done = 0;
          
            
        }
     
        
        
    }
    
    
}
else {
    can_talk = false;
}

if (dialog_done == 0 && !instance_exists(obj_dialog)) {
    game_end();
}