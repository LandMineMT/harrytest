--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all items, and blocks
--Licence: WTFPL 
--]

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