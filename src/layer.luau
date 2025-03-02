--!strict

local types = require("./types")

local layers = {}

local Layer = {} :: types.LayerImpl
Layer.__index = Layer

function Layer.new()
	local self = {
		_entities = {},
	}

	return setmetatable(self, Layer)
end

--[[
    Adds the entity into the layer. If the entity is already in the layer, nothing happens.
]]
function Layer:addEntity(entity: types.Entity)
	self._entities[entity] = true
end

return Layer
