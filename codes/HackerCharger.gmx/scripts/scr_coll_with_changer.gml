coll_with_changer = collision_circle(x,y,65,obj_room_changer,false,true);
if coll_with_changer != noone
    {
    //obj_player.speed =  global.all_var
    //obj_player.direction = other.target_direction
    
    instance_destroy();
    target_x = coll_with_changer.target_x
    target_y = coll_with_changer.target_y
    with(obj_player_checkpoint)
        {
        instance_destroy()
        }
    inst2 = instance_create(target_x,target_y,obj_player_checkpoint)
    with(inst2)
        {
        target_dir = other.coll_with_changer.target_dir
        }
    inst3 = instance_create(target_x,target_y,obj_player);
    with(inst3) 
        {
        direction = other.coll_with_changer.target_dir //coll_with_changer.target_dir
        }
    if coll_with_changer.target_rm != noone then room_goto(coll_with_changer.target_rm);
    }
/*  
with (instance_create(x, y, obj_Ball))
    {
    speed = other.speed;
    direction = other.direction;
    }
*/
