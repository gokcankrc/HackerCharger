




/*
var mid_coll = collision_line(x, y, x + 64 * cos(direction*pi/180) + hspeed, y + 64 * sin(direction*pi/180) + vspeed,obj_block,true,true) 
var up_coll = collision_line(x + 64 * sin(direction*pi/180), y + 64 * cos(direction*pi/180), x + 64 * sin(direction*pi/180) + hspeed, y + 64 * cos(direction*pi/180) + vspeed, obj_block,true,true)
var down_coll = collision_line(x - 64 * sin(direction*pi/180), y - 64 * cos(direction*pi/180), x - 64 * sin(direction*pi/180) + hspeed, y - 64 * cos(direction*pi/180) + vspeed, obj_block,true,true) 

*/


var r = x - bbox_left
var deg = direction*pi/180

var mid_coll = collision_circle(x + hspeed, y + vspeed, r, obj_block, true, true)

audio_em_bounce = audio_emitter_create();
audio_emitter_pitch(audio_em_bounce, random_range( .92 , 1.08 ));

if mid_coll != noone//checks if the mid_coll kills the player.
    {
    var inst = mid_coll.object_index
    if object_is_ancestor( inst, obj_blockdeath){
        coll_with_death = true
        audio_play_sound_on( audio_em_bounce , death , false , 11 );
    }
    else audio_play_sound_on( audio_em_bounce , bounce , false , 10 );
    
    }
else//think as if dir = 15. these are to check if there are some corners missed by mid_coll
    {
    var up_coll = collision_line(x - r * sin(deg), y - r * cos(deg), x - r * sin(deg) + hspeed, y - r * cos(deg) + vspeed, obj_block,true,true)
    var down_coll = collision_line(x + r * sin(deg), y + r * cos(deg), x + r * sin(deg) + hspeed, y + r * cos(deg) + vspeed, obj_block,true,true)
        
    
    if up_coll != noone
        {
        
        var inst = up_coll.object_index
        if object_is_ancestor( inst, obj_death) or object_is_ancestor( inst, obj_blockdeath){
            coll_with_death = true
            audio_play_sound_on( audio_em_bounce , death , false , 11 ); 
        }
        else audio_play_sound_on( audio_em_bounce , bounce , false , 10 );
        }
    if down_coll != noone
        {
       
        var inst = down_coll.object_index
        if object_is_ancestor( inst, obj_death) or object_is_ancestor( inst, obj_blockdeath){
            coll_with_death = true
            audio_play_sound_on( audio_em_bounce , death , false , 11 ); 
        }
        else audio_play_sound_on( audio_em_bounce , bounce , false , 10 );
        }
    }
    


 





