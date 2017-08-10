modifier_init()

audio_group_load(ag_generic_footstep)
audio_group_set_gain(ag_generic_footstep, 0.1, 1)

global.world_gravity = 0.5

global.control_move_right	= vk_right
global.control_move_left	= vk_left
global.control_crouch		= vk_down
global.control_jump			= vk_up
global.control_attack		= ord("A")


window_set_size(640, 480)
surface_resize(application_surface, 320, 240)
room_goto_next()