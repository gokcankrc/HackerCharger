


image_angle = rot;
attack_cooldown -= global.all_var;
if attack_cooldown <= 0
    {
    state = states.firing;
    attack_timer = 0;
    }

//if it is not in sight then change state
if !scr_targetable() then state = states.untargetable;




