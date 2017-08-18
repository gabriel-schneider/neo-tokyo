///entity_move(entity, values [,previous])

var coord = argument[1]
var xx = coord[0]
var yy = coord[1]

var count = 0
var previous = noone
if (argument_count >= 3)
{
	previous = argument[2]
	if (argument_count >= 4)
	{
		count = argument[3]
	}
}

with (argument[0])
{
	if (!place_meeting(x + xx, y + yy, obj_solid))
	{
		var entity_list = instance_place_list(x + xx, y + yy, obj_entity)
		if (entity_list = noone)
		{
			__previous = noone
			x += xx
			y += yy
			return true
		} else
		{			
			var found_collidable = false
			for (var i = 0; i < ds_list_size(entity_list); i++)
			{
			    var entity = entity_list[| i]
				if (entity.is_collidable)
				{
					found_collidable = true
					break				
				}
			};
			
			ds_list_destroy(entity_list)
			
			//if (entity.__previous == id)
			//{
			//	if (entity.is_ghostable && entity.is_collidable)
			//	{
			//		entity.__ghosted = true
			//		entity.is_collidable = false
			//	}
			//	x += xx
			//	y += yy
			//	return true	
			//}
			
			if (found_collidable)
			{
				if (entity.is_moveable)
				{
					if (entity_move(entity, [xx, yy], id, count + 1))
					{
						
						//entity._hspeed += xx
						x += xx
						y += yy
						return true
					}
				}
				return false
			}
			x += xx
			y += yy
			return true
		}
	}		
}

return false

