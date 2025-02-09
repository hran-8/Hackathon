if (alarm[0] < 0) {
    hp -= other.dmg;
    alarm[0] = 60;
    image_blend = c_red;
    
    if (hp <= 0) {
        hp_total = saved_hp; 
        xp = saved_xp; 
        damage = saved_dmg;
        level = saved_level; 
        xp_require = saved_xp_require;
     
       
        if (room == Room2) {
            x = 552;
            y = 512; 
        }
        else if (room == Room2_Child_0) {
            x = 333; 
            y=387;
        }
        else if (room == Room2_Child_1) {
            x = 800;
            y=388;
        }
        else if (room == Room2_Child_2) {
            x = 560;
            y=288;
        }
        else if (room == Room2_Child_3) {
            x=653;
            y=256;
        }
        else if (room == Room2_Child_4) {
            x=560;
            y=258;
        }
        hp = hp_total;
        image_blend = c_white;
        room_restart();
        
        
        
    }
}