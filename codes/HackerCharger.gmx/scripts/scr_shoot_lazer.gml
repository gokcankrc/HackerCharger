
i2 = 0//IF SHIT GO SERIOUS, CREATES 250 LAZERS, JUST STOP
lazer_coll = noone
while (lazer_coll == noone) and i2<250
{
    i += 1;
    i2 ++;
    dis = i * 256;
    inst = instance_create(x + lengthdir_x(dis - 128,rot), y + lengthdir_y(dis - 128,rot), obj_lazer);

    with(inst)
    {
        image_angle = other.rot;
    }
    lazer_coll = collision_line(x + lengthdir_x(dis,rot), y + lengthdir_y(dis,rot) ,x + lengthdir_x(dis + 128,rot), y + lengthdir_y(dis + 128,rot) ,obj_block,true,true);
}


dis2 = distance_to_object(lazer_coll) % 256;
dis2 = dis2/256//this is scale multiplayer for LAST LAZER

i += 1
dis = i * 256
inst = instance_create(x + lengthdir_x(dis - 128,rot), y + lengthdir_y(dis - 128,rot), obj_lazer)// same creation, creates the next one
with(inst)
{

    image_xscale = other.dis2
    image_angle = other.rot
    
    
} 
i = 0
dis = 0
i2 = 0

    
    
