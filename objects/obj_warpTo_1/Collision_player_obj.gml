

if (instance_number(obj_enemy_parent) == 0) {
    other.x = xPosition;
    other.y = yPosition; 
    
    room_goto(roomName);
 
}
else if (keyboard_check_pressed(vk_space)){
    create_dialog(dialog);
}

