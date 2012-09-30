--[
--PotterTest Mod Made by LandMine
--This subfolder of the mod contains all spells
--Licence: WTFPL 
--]

---Functions


-- Spells


----1. Aguamenti - Sends out water

minetest.register_tool("htspells:aguamenti", {
	description = "Aguamenti Spell",
	inventory_image = "aqua.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		minetest.env:set_node(pointed_thing.above, {name="default:water_source"})
	end
})

----2. Incendio - Sends out fire

minetest.register_tool("htspells:incendio", {
	description = "Inendio Spell",
	inventory_image = "flame.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		minetest.env:set_node(pointed_thing.above, {name="fire:basic_flame"})
	end
})

----3. Alohomora - Unlocks doors
minetest.register_tool("htspells:alohomora", {
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

----4. Bombarda - Provokes a small explosion.

minetest.register_tool("htspells:bombarda", {
	description = "Bombarda Spell",
	inventory_image = "flame.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		boom(pos)
	end
})

minetest.register_entity("htspells:smoke", {
	physical = true,
	visual = "sprite",
	textures = {"smoke.png"},
	collisionbox = {0,0,0,0,0,0},
	
	timer = 0,
	time = 5,
	
	on_activate = function(self, staticdata)
		self.object:setacceleration({x=math.random(0,10)/10-0.5, y=5, z=math.random(0,10)/10-0.5})
		self.time = math.random(1, 10)/10
	end,
	
	on_step = function(self, dtime)
		self.timer = self.timer+dtime
		if self.timer > self.time then
			self.object:remove()
		end
	end,
})