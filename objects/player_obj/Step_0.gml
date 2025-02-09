

if (instance_exists(obj_dialog)) exit;
    
if (game_flag < 0) {
    create_dialog([
    {
        name: "Tutorial",
        msg: "Press SPACEBAR to continue."
    }, 
    {
        name: "Tutorial",
        msg: "Welcome to Everyone at the Hackathon Turned Into Zombies!"
    },
    {
        name: "Tutorial",
        msg: "That bulldog over there looks like he has something to say to you."
    },
    {
        name: "Tutorial",
        msg: "Use WASD keys to move and SPACEBAR when you get close to him."
    },
    ]); 
    game_flag = 0;
}
    


var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0) 
{
    if (_ver > 0) {
        sprite_index = player_down_walk;
    }
    else if (_ver < 0) {
        sprite_index = player_up_walk;
    }
    else if (_hor > 0) {
        sprite_index = player_right_walk;
    }
    else if (_hor < 0) {
        sprite_index = player_left_walk;
    }
    
    facing = point_direction(0,0,_hor,_ver);
    if (keyboard_check_pressed(vk_lshift)!=0) {
        move_speed = 2;
    }
    else if (keyboard_check_released(vk_lshift)!=0) {
        move_speed = 1;
    }
}
else 
{
    if (sprite_index == player_right_walk) sprite_index = player_right_idle;
        else if (sprite_index == player_left_walk) sprite_index = player_left_idle; 
            else if (sprite_index == player_down_walk) sprite_index = player_down_idle; 
                else if (sprite_index == player_up_walk) sprite_index = player_up_idle;
}

if (keyboard_check_pressed(vk_space)) {
    audio_play_sound(snd_slash,0,false, 1, 0, random_range(0.8,1.2));
    var _inst = instance_create_depth(x+10,y+8,depth,obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}


/// collision stuff
tilemap = [layer_tilemap_get_id("tiles_foreground"), layer_tilemap_get_id("tiles_trees")];


if (r1_done < 0 && instance_number(obj_enemy_parent) == 0 && room == Room2) {
    r1_done = 0;
 
    create_dialog(dialog);
}
else if (r3_start < 0 && room == Room2_Child_1) {
    r3_start = 0;
    create_dialog(global.r2_dia);
    oCamera.follow = obj_enemy2; 

}
else if (r5_start < 0 && room == Room2_Child_3) {
    r5_start = 0;
    create_dialog(global.r5_dia);
    oCamera.follow = obj_enemy3;
}
else if (ending_start < 0 && room == Room2_Child_4) {
    ending_start = 0;
    create_dialog(global.end_start);
    oCamera.follow = obj_npc1_1;
}

