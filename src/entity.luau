--!strict

local types = require("./types")

local Entity = {} :: types.EntityImpl
Entity.__index = Entity

function Entity.new()
	local self = {
		_attributes = {},
	}

	return setmetatable(self, Entity)
end

function Entity:bindToInstance(instance: Instance)
	self._instance = instance
end

function Entity:get<T>(attribute: types.Attribute<T>)
	return self._attributes[attribute]
end

return Entity
