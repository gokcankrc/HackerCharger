coll_with_changer = collision_circle(x,y,65,obj_room_changer,false,true);
if coll_with_changer != noone
    {
    //obj_player.speed =  global.all_var
    //obj_player.direction = other.target_direction
    
    instance_destroy();
    
    if coll_with_changer.target_rm != noone then room_goto(coll_with_changer.target_rm);
    
    inst2 = instance_create(coll_with_changer.target_x,coll_with_changer.target_y,obj_player);
    with(inst2) 
        {
        direction = other.coll_with_changer.target_dir //coll_with_changer.target_dir
        }
    }
/*  
with (instance_create(x, y, obj_Ball))
    {
    speed = other.speed;
    direction = other.direction;
    }
*/
