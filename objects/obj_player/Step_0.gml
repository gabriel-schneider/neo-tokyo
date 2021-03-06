audio_listener_orientation(0, 0, -1000, 0, 1, 0)
audio_listener_position(lerp(bbox_left, bbox_right, 0.5), lerp(bbox_top, bbox_bottom, 0.25), 0)

_hspeed += (keyboard_check(vk_right) - keyboard_check(vk_left))*acceleration
_direction = sign(_hspeed)

entity_apply_friction(id)
entity_apply_max_speed(id)
entity_apply_hspeed(id)
entity_apply_vspeed(id)

switch (state_current) {
	case actor_state.normal: {
	
		if (on_floor)
		{
			if (keyboard_check_pressed(vk_up))	
			{
				entity_jump()
			}
		
			if keyboard_check_pressed(vk_down)
			{
				event_fire(id, "on_before_crouch")
				modifier_apply(id, "crouch")
				event_fire(id, "on_after_crouch")
			}
		}
		break
	}
	case actor_state.crouch: {		
		if keyboard_check_pressed(vk_down)
		{
			var old_mask = mask_index
			mask_index = spr_msk_player
			if (!place_meeting(x, y, obj_solid))
			{				
				modifier_remove(id, "crouch")
			} else
			{
				mask_index = old_mask	
			}
		}
	}
}






