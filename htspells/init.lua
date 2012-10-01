spells = {
	{"htspells:spell", "htspells:spell_entity"},
	{"htspells:spell_fire", "htspells:spell_fire_entity"},
}

local htspells_shoot_spell = function(itemstack, player)
	for _,stack in ipairs(player:get_inventory():get_list("main")) do
		for _,spell in ipairs(spells) do
			if stack:get_name() == spell[1] then
				player:get_inventory():remove_item("main", spell[1])
				local playerpos = player:getpos()
				local obj = minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, spell[2])
				local dir = player:get_look_dir()
				obj:setvelocity({x=dir.x*19, y=dir.y*19, z=dir.z*19})
				obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
				obj:setyaw(player:get_look_yaw()+math.pi)
				minetest.sound_play("throwing_sound", {pos=playerpos})
				if obj:get_luaentity().player == "" then
					obj:get_luaentity().player = player
				end
				obj:get_luaentity().node = player:get_inventory():get_stack("main", 1):get_name()
				return true
			end
		end
	end
	return false
end

minetest.register_tool("htspells:wand_basic", {
	description = "Basic Wand",
	inventory_image = "wand2.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if htspells_shoot_spell(itemstack, user, pointed_thing) then
			itemstack:add_wear(65535/50)
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = 'htspells:wand_basic',
	recipe = {
		{'', '', ''},
		{'', 'default:stick', ''},
		{'default:stick', 'default:stick', 'default:stick'},
	}
})

minetest.register_tool("htspells:wand_normal", {
	description = "Wand",
	inventory_image = "wand3.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if htspells_shoot_spell(item, user, pointed_thing) then
			itemstack:add_wear(65535/100)
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = 'htspells:wand_normal',
	recipe = {
		{'', '', ''},
		{'default:stick', 'default:stick', 'default:stick'},
		{'default:stick', 'default:stick', 'default:stick'},
	}
})

minetest.register_tool("htspells:wand_advanced", {
	description = "Advanced Wand",
	inventory_image = "wand4.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if htspells_shoot_spell(item, user, pointed_thing) then
			itemstack:add_wear(65535/200)
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = 'htspells:wand_advanced',
	recipe = {
		{'', '', ''},
		{'default:stick', 'default:stick', ''},
		{'default:stick', 'default:stick', 'default:stick'},
	}
})

dofile(minetest.get_modpath("htspells").."/spell.lua")
dofile(minetest.get_modpath("htspells").."/fire_spell.lua")
dofile(minetest.get_modpath("htspells").."/teleport_spell.lua")
dofile(minetest.get_modpath("htspells").."/dig_spell.lua")
dofile(minetest.get_modpath("htspells").."/build_spell.lua")