switch(creation_angle)
    {
    case "down":
    image_angle = 270
    max_angle = image_angle - 90
    min_angle = image_angle + 90
    break
    case "up":
    image_angle = 90
    max_angle = image_angle - 90
    min_angle = image_angle + 90
    break
    case "left":
    image_angle = 180
    max_angle = image_angle - 90
    min_angle = image_angle + 90
    break
    case "right":
    image_angle = 0
    max_angle = image_angle - 90
    min_angle = image_angle + 90
    break
    }
image_angle -= 90
max_angle -= 90
min_angle -= 90

if object_get_name(self) == obj_lazor_body
    {
    var inst = instance_create(x,y,obj_lazor_head)
    with(inst)
        {
        //creation_angle = other.creation_angle
        
        }
    }

