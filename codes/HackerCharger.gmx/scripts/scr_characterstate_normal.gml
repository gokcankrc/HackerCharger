audio_em_slow_in = audio_emitter_create();
audio_emitter_pitch(audio_em_slow_in, random_range( .98 , 1.02 ));




//slowing and speeding time------------------------
if mouse_left_pressed
    {
    slow = true
    slowtime = 90
    global.all_var = global.all_var_low//slowed time
    audio_play_sound_on( audio_em_slow_in , slow_in , false , 11 );
    cursor.visible = true
    
    
    state = states.slowtime
    
    
    }


    
image_speed = speed / 200

image_angle = direction



if coll_with_death = true then state = states.destroy


