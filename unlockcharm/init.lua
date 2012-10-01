--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all spells
--Licence: WTFPL 
--]

---Functions


-- Spells

----3. Alohomora - Unlocks doors
minetest.register_tool("unlockcharm:alohomora", {
	description = "Alohomora Spell",
	inventory_image = "key.png",
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
