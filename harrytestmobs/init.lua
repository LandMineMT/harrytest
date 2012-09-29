--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all mobs
--Licence: WTFPL 
--]

dofile(minetest.get_modpath("harrytestmobs").."/api.lua")

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

minetest.register_craftitem("harrytestmobs:magicdust", {
	description = "Magicdust",
	inventory_image = "blueprint.png",
})

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

minetest.register_craftitem("harrytestmobs:dark_magicdust", {
	description = "Dark Magicdust",
	inventory_image = "darkblueprint.png",
})