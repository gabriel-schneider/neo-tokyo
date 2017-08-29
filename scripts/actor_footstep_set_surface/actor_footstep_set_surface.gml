/// @description Set the actor footstep surface material
/// @param {string} material_name The material name

ds_list_copy(fs_list, global.footstep_db[? argument0])
ds_list_shuffle(fs_list)
fs_index = 0
fs_surface = argument0
return true