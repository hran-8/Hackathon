if (instance_exists(obj_dialog)) exit;
    

if (instance_exists(player_obj) && distance_to_object(player_obj) < 8) {
    can_talk = true; 
    if (keyboard_check_pressed(input_key)) {
        if (dialog_done < 0) {
            audio_play_sound(snd_pop, 0, false);
            create_dialog(dialog);
            dialog_done = 0;
            obj_arrow_up.visible = true;
            
        }
        else {
            audio_play_sound(snd_pop, 0, false);
            create_dialog(dialogue1);
        }
        
        
    }
    
    
}
else {
    can_talk = false;
}