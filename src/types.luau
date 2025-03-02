--!strict

-- Entity
type EntityFields = {
	_instance: Instance?,
}

export type EntityImpl = {
	__index: EntityImpl,
	new: () -> Entity,
	bindToInstance: (self: Entity, instance: Instance) -> (),
	getLayer: (self: Entity) -> Layer?,
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
