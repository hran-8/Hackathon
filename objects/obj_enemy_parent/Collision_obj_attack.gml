if (alarm[1] < 0) {
    audio_play_sound(snd_zombie,0,false,1,0,random_range(0.8,1.2));
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}