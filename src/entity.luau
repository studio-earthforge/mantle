--!strict

local types = require("./types")

local Entity = {} :: types.EntityImpl
Entity.__index = Entity

function Entity.new()
	local self = {}

	return setmetatable(self, Entity)
end

function Entity:bindToInstance(instance: Instance)
	self._instance = instance
end

return Entity
