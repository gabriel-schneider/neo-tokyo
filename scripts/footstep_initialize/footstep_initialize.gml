/// @description Initialize the footstep system

footstep_define_enums()

//Create footstep databank


global.footstep_db = ds_map_create()

var materials_value = [footstep_surface.generic, footstep_surface.wood]
var materials_resname = ["snd_fs_generic_", "snd_fs_wood_"]

for (var i = 0; i < array_length_1d(materials_value); i ++) {

	var list = ds_list_create()
	var j = 0
	
	do {
	    var res = asset_get_index(materials_resname[i] + string(j))
		if (res >= 0) {
			ds_list_add(list, res)   
		}
		j ++
	} until (res < 0)
	
	ds_map_add(global.footstep_db, materials_value[i], list)
}