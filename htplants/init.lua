math.randomseed(os.time())

local DEBUG = 1

local GROWING_DELAY = 500 -- larger numbers = ABM runs less often
local GROWCHANCE = 50 -- larger = less chance to grow

local HTPLANTS = {
	{ "Aconite",		"aconite", 		GROWING_DELAY*2,	15,	GROWCHANCE*2	},
	{ "Aloe",		"aloe",		GROWING_DELAY,		10,	GROWCHANCE	},
	{ "Trumpet",	"trumpet",	GROWING_DELAY,		10,	GROWCHANCE	},
	{ "Anjelica",	"anjelica",	GROWING_DELAY*2,	15,	GROWCHANCE*2	},
	{ "Arnica",	"arnica",		GROWING_DELAY,		10,	GROWCHANCE*2	},
	{ "Asphodel",		"asphodel",		GROWING_DELAY*2,	15,	GROWCHANCE*2	},
	{ "Balm",	"balm",		GROWING_DELAY,		10,	GROWCHANCE	},
}

local dbg = function(s)
	if DEBUG == 1 then
		print("[HTPLANTS] " .. s)
	end
end

local is_node_loaded = function(node_pos)
	n = minetest.env:get_node_or_nil(node_pos)
	if (n == nil) or (n.name == "ignore") then
		return false
	end
	return true
end

spawn_on_surfaces = function(spawndelay, spawnflower, spawnradius, spawnchance, spawnsurface, spawnavoid)
	minetest.register_abm({
		nodenames = { spawnsurface },
		interval = spawndelay,
		chance = spawnchance,

		action = function(pos, node, active_object_count, active_object_count_wider)
			local p_top = { x = pos.x, y = pos.y + 1, z = pos.z }	
			local n_top = minetest.env:get_node(p_top)
			if (n_top.name == "air") and is_node_loaded(p_top) then
				if (minetest.env:find_node_near(p_top, spawnradius, spawnavoid) == nil )
				   and (minetest.env:get_node_light(p_top, nil) > 4) then
					dbg("Spawning "..spawnflower.." at ("..p_top.x..", "..p_top.y..", "..p_top.z..") on "..spawnsurface)
					minetest.env:add_node(p_top, { name = spawnflower })
				end
			end
		end
	})
end

-- On regular fertile ground, any flower except waterlilies can spawn

for i in ipairs(HTPLANTS) do
	local flowerdesc = HTPLANTS[i][1]
	local flower     = HTPLANTS[i][2]
	local delay      = HTPLANTS[i][3]
	local radius     = HTPLANTS[i][4]
	local chance     = HTPLANTS[i][5]

	minetest.register_node("htplants:plant_"..flower, {
		description = flowerdesc,
		drawtype = "plantlike",
		tiles = { "plant_"..flower..".png" },
		inventory_image = "plant_"..flower..".png",
		wield_image = "plant_"..flower..".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		groups = { snappy = 3,flammable=2, flower=1 },
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
		},	
	})


	spawn_on_surfaces(delay, "htplants:plant_"..flower, radius, chance, "default:dirt_with_grass", "group:flower")
	spawn_on_surfaces(delay, "htplants:plant_"..flower, radius, chance, "default:dirt", "group:flower")
end

-- Crafts (none yet).


print("[htplants] Loaded!")
