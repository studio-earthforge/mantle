--!strict

local types = require("./types")

local attributes: { [string]: types.Attribute } = {}

return function<T>(id: string, value: T)
	assert(not attributes[id], `Attribute "{id}" already exists`)
	local attribute: types.Attribute<T> = {
		_T = value,
	}

	attributes[id] = attribute
	return attribute
end
