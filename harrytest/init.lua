--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all items, and blocks
--Licence: WTFPL 
--]

--------------------------------------------------------------------------------

local WALLMX = 3
local WALLMZ = 5
local WALLPX = 2
local WALLPZ = 4

--------------------------------------------------------------------------------

-- Items

----1. Wand
minetest.register_tool("harrytest:wand", {
	description = "Magic Wand",
	inventory_image = "wand.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	}
})

----2. Magic mdoor
minetest.register_alias('mdoor', 'harrytest:mdoor_wood')
minetest.register_alias('mdoor_wood', 'harrytest:mdoor_wood')

minetest.register_node( 'harrytest:mdoor_wood', {
	description         = 'Magic door',
	drawtype            = 'signlike',
	tiles         		= { 'mdoor_wood.png' },
	inventory_image     = 'mdoor_wood.png',
	wield_image         = 'mdoor_wood.png',
	paramtype2          = 'wallmounted',
	selection_box       = { type = 'wallmounted' },
	groups              = { choppy=2, dig_immediate=2 },
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'harrytest:mdoor_wood',
	burntime = 30,
})

minetest.register_node( 'harrytest:mdoor_wood_a_c', {
	Description         = 'Top Closed Magic door',
	drawtype            = 'signlike',
	tiles         		= { 'mdoor_wood_a.png' },
	inventory_image     = 'mdoor_wood_a.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	groups              = { choppy=2, dig_immediate=2 },
	legacy_wallmounted  = true,
	drop                = 'harrytest:mdoor_wood',
})

minetest.register_node( 'harrytest:mdoor_wood_b_c', {
	Description         = 'Bottom Closed Magic door',
	drawtype            = 'signlike',
	tiles         		= { 'mdoor_wood_b.png' },
	inventory_image     = 'mdoor_wood_b.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	groups              = { choppy=2, dig_immediate=2 },
	legacy_wallmounted  = true,
	drop                = 'harrytest:mdoor_wood',
})

minetest.register_node( 'harrytest:mdoor_wood_a_o', {
	Description         = 'Top Open Magic door',
	drawtype            = 'signlike',
	tiles         		= { 'mdoor_wood_a_r.png' },
	inventory_image     = 'mdoor_wood_a_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	groups              = { choppy=2, dig_immediate=2 },
	legacy_wallmounted  = true,
	drop                = 'harrytest:mdoor_wood',
})

minetest.register_node( 'harrytest:mdoor_wood_b_o', {
	Description         = 'Bottom Open Magic door',
	drawtype            = 'signlike',
	tiles         		= { 'mdoor_wood_b_r.png' },
	inventory_image     = 'mdoor_wood_b_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	groups              = { choppy=2, dig_immediate=2 },
	legacy_wallmounted  = true,
	drop                = 'harrytest:mdoor_wood',
})

--------------------------------------------------------------------------------

local round = function( n )
	if n >= 0 then
		return math.floor( n + 0.5 )
	else
		return math.ceil( n - 0.5 )
	end
end

local on_mdoor_placed = function( pos, node, placer )
	if node.name ~= 'harrytest:mdoor_wood' then return end

	local upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	local apos = { x = pos.x, y = pos.y + 1, z = pos.z }
	local und = minetest.env:get_node( upos )
	local abv = minetest.env:get_node( apos )

	local dir = placer:get_look_dir()

	if     round( dir.x ) == 1  then
		newparam = WALLMX
	elseif round( dir.x ) == -1 then
		newparam = WALLPX
	elseif round( dir.z ) == 1  then
		newparam = WALLMZ
	elseif round( dir.z ) == -1 then
		newparam = WALLPZ
	end

	if und.name == 'air' then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'harrytest:mdoor_wood_b_c', param2 = newparam } )
	elseif abv.name == 'air' then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'harrytest:mdoor_wood_a_c', param2 = newparam } )
	else
		minetest.env:remove_node( pos )
		placer:get_inventory():add_item( "main", 'harrytest:mdoor_wood' )
		minetest.chat_send_player( placer:get_player_name(), 'not enough space' )
	end
end

local on_mdoor_punched = function( pos, node, puncher )
local tool = puncher:get_wielded_item():get_name()
		if tool and tool == "unlockcharm:alohomora" then
	 if string.find( node.name, 'harrytest:mdoor_wood' ) == nil then return end

	local upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	local apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end
	

	if ( node.name == 'harrytest:mdoor_wood_a_c' ) then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_a_o', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'harrytest:mdoor_wood_b_o', param2 = newparam } )

	elseif ( node.name == 'harrytest:mdoor_wood_b_c' ) then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_b_o', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'harrytest:mdoor_wood_a_o', param2 = newparam } )

	elseif ( node.name == 'harrytest:mdoor_wood_a_o' ) then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'harrytest:mdoor_wood_b_c', param2 = newparam } )

	elseif ( node.name == 'harrytest:mdoor_wood_b_o' ) then
		minetest.env:add_node( pos,  { name = 'harrytest:mdoor_wood_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'harrytest:mdoor_wood_a_c', param2 = newparam } )

	end
end
end

local on_mdoor_digged = function( pos, node, digger )
	local upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	local apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if ( node.name == 'harrytest:mdoor_wood_a_c' ) or ( node.name == 'harrytest:mdoor_wood_a_o' ) then
		minetest.env:remove_node( upos )
	elseif ( node.name == 'harrytest:mdoor_wood_b_c' ) or ( node.name == 'harrytest:mdoor_wood_b_o' ) then
		minetest.env:remove_node( apos )
	end
end

--------------------------------------------------------------------------------

minetest.register_on_placenode( on_mdoor_placed )
minetest.register_on_punchnode( on_mdoor_punched )
minetest.register_on_dignode( on_mdoor_digged )

--------------------------------------------------------------------------------