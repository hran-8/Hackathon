move_speed = 2;

tilemap = [layer_tilemap_get_id("tiles_foreground"),layer_tilemap_get_id("tiles_trees")];

saved_hp = 0; 
saved_xp = 0; 
saved_dmg = 0; 
saved_level = 0;
saved_xp_require = 0;


hp  = 10;
hp_total = hp;
damage = 1;
facing = 0;

// dialogue flags
r1_done = -1; 
r3_start = -1;
r5_start = -1;
ending_start = -1;

round_num = 1;


game_flag = -1;

level=1;
xp=0;
xp_require=100;


function add_xp(xp_to_add) {
    xp += xp_to_add;
    if (xp >= xp_require) {
        level++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total += 5;
       
        hp = hp_total;
        damage += 0.8;
        
    }
}