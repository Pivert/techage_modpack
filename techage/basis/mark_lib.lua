--[[

	TechAge
	=======

	Copyright (C) 2020-2021 Joachim Stolberg

	AGPL v3
	See LICENSE.txt for more information

	Block marker lib for door/move/fly controller

]]--

local MAX_NUM = 128
local marker = {}

local MarkedNodes = {} -- t[player] = {{entity, pos},...}
local MaxNumber = {}
local CurrentPos  -- to mark punched entities

local function unmark_position(name, pos)
	pos = vector.round(pos)
	for idx,item in ipairs(MarkedNodes[name] or {}) do
		if vector.equals(pos, item.pos) then
			item.entity:remove()
			table.remove(MarkedNodes[name], idx)
			CurrentPos = pos
			return true
		end
	end
end

function marker.unmark_all(name)
	for _,item in ipairs(MarkedNodes[name] or {}) do
		item.entity:remove()
	end
	MarkedNodes[name] = nil
end

local function mark_position(name, pos)
	pos = vector.round(pos)
	if not CurrentPos or not vector.equals(pos, CurrentPos) then -- entity not punched?
		if #MarkedNodes[name] < MaxNumber[name] then
			local entity = minetest.add_entity(pos, "techage:block_marker")
			if entity ~= nil then
				entity:get_luaentity().player_name = name
				table.insert(MarkedNodes[name], {pos = pos, entity = entity})
			end
			CurrentPos = nil
			return true
		end
	end
	CurrentPos = nil
end

function marker.get_poslist(name)
	local idx = 0
	local lst = {}
	local hashlist = {}
	for _,item in ipairs(MarkedNodes[name] or {}) do
		local hash = minetest.hash_node_position(item.pos)
		if not hashlist[hash] then
			table.insert(lst, item.pos)
			hashlist[hash] = true
			idx = idx + 1
			if idx >= MAX_NUM then break end
		end
	end
	return lst
end

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if puncher and puncher:is_player() then
		local name = puncher:get_player_name()

		if not MarkedNodes[name] then
			return
		end

		mark_position(name, pointed_thing.under)
	end
end)

function marker.start(name, max_num)
	MaxNumber[name] = max_num or 99
	MarkedNodes[name] = {}
end

function marker.stop(name)
	MarkedNodes[name] = nil
	MaxNumber[name] = nil
end

function marker.mark_positions(name, lpos, ttl)
	for _,pos in ipairs(lpos or {}) do
		local entity = minetest.add_entity(pos, "techage:block_marker")
		if entity ~= nil then
			entity:get_luaentity().player_name = name
			entity:get_luaentity().ttl = ttl
		end
	end
end

minetest.register_on_leaveplayer(function(ObjectRef, timed_out)
	if ObjectRef and ObjectRef:is_player() then
		local name = ObjectRef:get_player_name()
		marker.unmark_all(name)
	end
end)


minetest.register_entity(":techage:block_marker", {
	initial_properties = {
		visual = "cube",
		textures = {
			"techage_cube_mark.png",
			"techage_cube_mark.png",
			"techage_cube_mark.png",
			"techage_cube_mark.png",
			"techage_cube_mark.png",
			"techage_cube_mark.png",
		},
		physical = false,
		visual_size = {x=1.1, y=1.1},
		collisionbox = {-0.55,-0.55,-0.55, 0.55,0.55,0.55},
		glow = 8,
		static_save = false,
	},
	on_step = function(self, dtime)
		self.ttl = (self.ttl or 2400) - 1
		if self.ttl <= 0 then
			local pos = self.object:get_pos()
			if not unmark_position(self.player_name, pos) then self.object:remove() end
		end
	end,
	on_punch = function(self, hitter)
		local pos = self.object:get_pos()
		local name = hitter:get_player_name()
		if name == self.player_name then
			if not unmark_position(self.player_name, pos) then self.object:remove() end
		end
	end,
})

return marker
