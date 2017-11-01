


//checks if player is in range
if attack_range > distance_to_object(obj_player) 
{
    in_range = true
}
else in_range = false

//checks if there is nothing inbetween the player
if in_range
{
    var instInbetween = collision_line(x + lengthdir_x(10,dir_to_player),y + lengthdir_y(10,dir_to_player), obj_player_follower.x, obj_player_follower.y, obj_block,false,true)
    if instInbetween == noone then return 1; else return 0;
}


