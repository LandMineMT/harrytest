--[[
****
Custom Mod For Creative Server
by LandMine
Version 9.15.12
****
--]]

-- Blocks


----SOLID

minetest.register_node("lmb:asphalt", {
	description = "Asphalt",
	tile_images = {"asphalt.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:checkeredwood", {
	description = "Checkered Wood",
	tile_images = {"checkeredwood.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:checkeredwool", {
	description = "Checkered Wool",
	tile_images = {"checkeredwool.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:chessboard", {
	description = "Chess Board",
	tile_images = {"ChessBoard.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:coalblock", {
	description = "Coal Block",
	tile_images = {"coalblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:clock", {
	description = "Clock",
	tile_images = {"Clock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:cobbleblock", {
	description = "Cobble Block",
	tile_images = {"cobbleblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:concrete", {
	description = "Concrete",
	tile_images = {"concrete.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:crate", {
	description = "Crate",
	tile_images = {"Crate.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:diamond", {
	description = "Diamond Block",
	tile_images = {"diamond.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:goldblock", {
	description = "Gold Block",
	tile_images = {"goldblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:gunpowderblock", {
	description = "Powder Block",
	tile_images = {"gunpowderblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:haybale", {
	description = "Hay Bale",
	tile_images = {"HayBale.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:largebrick", {
	description = "Large Brick",
	tile_images = {"largebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:lavarock", {
	description = "Lava Rock",
	tile_images = {"lavarock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:limestone", {
	description = "Lime Stone",
	tile_images = {"limestone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:marble", {
	description = "Marble",
	tile_images = {"marble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:marbletile", {
	description = "Marbletile",
	tile_images = {"marbletile.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:sandbricks", {
	description = "Sand Bricks",
	tile_images = {"SandBricks.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:slimeblock", {
	description = "Slime Block",
	tile_images = {"slimeblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:squareblock", {
	description = "Square Block",
	tile_images = {"squareblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lmb:stoneblock", {
	description = "StoneB lock",
	tile_images = {"stoneblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("lmb:map", {
	description = "Map",
	drawtype = "signlike",
	tile_images = {"Map.png"},
	inventory_image = "Map.png",
	wield_image = "Map.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
	legacy_wallmounted = true,
})

