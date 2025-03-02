--!strict

-- Attribute
export type Attribute<T = unknown> = {
	_T: T,
}

-- Entity
type EntityFields = {
	_instance: Instance?,
	_attributes: { [Attribute]: any },
}

export type EntityImpl = {
	__index: EntityImpl,
	new: () -> Entity,
	bindToInstance: (self: Entity, instance: Instance) -> (),
	getLayer: (self: Entity) -> Layer?,
	get: <T>(self: Entity, attribute: Attribute<T>) -> T?,
}

export type Entity = typeof(setmetatable({} :: EntityFields, {} :: EntityImpl))

-- Layer
type LayerFields = {
	_entities: { [Entity]: true },
}

export type LayerImpl = {
	__index: LayerImpl,
	new: () -> Layer,
	addEntity: (self: Layer, entity: Entity) -> (),
}

export type Layer = typeof(setmetatable({} :: LayerFields, {} :: LayerImpl))

-- EOF
return nil
