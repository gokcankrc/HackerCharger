



//rot is rotation to player follower
i = 0 //distance multiplayer
dis = 128 * i  //distance is multiplied by 128, as it it a whole block
lazer_coll = noone

if attack_timer = 0 //only activates for the first time, creates the line of lazers
{
    scr_shoot_lazer()
    scr_shoot_lazer()
}

attack_timer += global.all_var;//this is timer, and when this reaches its max, it will destroy all lazers and get out from this state
image_speed = imagespeed * global.all_var;

if attack_timer >= 90
{
    if !scr_targetable() then state = states.untargetable
    else
    {
        state = states.onCD
        attack_cooldown = attack_cooldown_max
    }
}


    
