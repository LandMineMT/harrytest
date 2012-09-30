--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all mobs
--Licence: WTFPL 
--]

dofile(minetest.get_modpath("harrytestmobs").."/api.lua")

--------Blueprints
minetest.register_craftitem("harrytestmobs:magicdust", {
	description = "Magicdust",
	inventory_image = "blueprint.png",
})

minetest.register_craftitem("harrytestmobs:dark_magicdust", {
	description = "Dark Magicdust",
	inventory_image = "darkblueprint.png",
})



--------Mobs
--- 1. Good Wizards

mobs:register_mob("harrytestmobs:good_wizard", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"wizard_front.png", "wizard_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:good_wizard", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)


--- 2. Dark Wizards

mobs:register_mob("harrytestmobs:dark_wizard", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"dwizard_front.png", "dwizard_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:dark_wizard", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 3. Harry Potter

mobs:register_mob("harrytestmobs:harry", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"hp_front.png", "hp_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:harry", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)


--- 4. Ron Weasly

mobs:register_mob("harrytestmobs:ron", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"ron_front.png", "ron_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:ron", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 5. Hermaoine Granger

mobs:register_mob("harrytestmobs:herm", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"herm_front.png", "herm_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:herm", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 6. Albus Dumbbledore

mobs:register_mob("harrytestmobs:albus", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"dumbble_front.png", "dumbble_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:albus", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 7. Voldemort

mobs:register_mob("harrytestmobs:voldemort", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"volde_front.png", "volde_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:voldemort", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 8. Snape

mobs:register_mob("harrytestmobs:snape", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"snape_front.png", "snape_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:snape", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 9. Hagrid

mobs:register_mob("harrytestmobs:hagrid", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"hagrid_front.png", "hagrid_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:hagrid", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 10. Mogul #1

mobs:register_mob("harrytestmobs:m1", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"1_front.png", "1_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:m1", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 11. Mogul #2

mobs:register_mob("harrytestmobs:m2", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"2_front.png", "2_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:m2", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)

--- 12. Mogul #3

mobs:register_mob("harrytestmobs:m3", {
		type = "animal",
	hp_max = 5,
	collisionbox = {-0.4, -1, -0.4, 0.4, 1, 0.4},
	visual = "upright_sprite",
	visual_size = {x=1, y=2},
	textures = {"3_front.png", "3_back.png"},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "harrytestmobs:dark_magicdust",
		chance = 1,
		min = 1,
		max = 2,},
	},
	light_resistant = true,
	armor = 2,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
})
mobs:register_spawn("harrytestmobs:m3", {"default:dirt_with_grass"}, 20, 8, 5000, 0, 31000)