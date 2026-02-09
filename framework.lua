local module = {}

local function createInstance(className: string, name : string, parent : Instance, properties : any)
	local inst = Instance.new(className)
	inst.Name = name
	inst.Parent = parent

	if properties then
		for prop, value in pairs(properties) do
			inst[prop] = value
		end
	end

	return inst
end

function module:Create(name: string, parent : Instance, properties : any)
	return createInstance("ScreenGui", name, parent, properties)
end

function module:Frame(name: string, parent : Instance, properties : any)
	return createInstance("Frame", name, parent, properties)
end

function module:TextLabel(name: string, parent : Instance, properties : any)
	return createInstance("TextLabel", name, parent, properties)
end

function module:TextButton(name: string, parent : Instance, properties : any)
	return createInstance("TextButton", name, parent, properties)
end

function module:ImageLabel(name: string, parent : Instance, properties : any)
	return createInstance("ImageLabel", name, parent, properties)
end

function module:ImageButton(name: string, parent : Instance, properties : any)
	return createInstance("ImageButton", name, parent, properties)
end

function module:UICorner(name: string, parent : Instance, properties : any)
	return createInstance("UICorner", name, parent, properties)
end

function module:UIStroke(name: string, parent : Instance, properties : any)
	return createInstance("UIStroke", name, parent, properties)
end

function module:UIGradient(name: string, parent : Instance, properties : any)
	return createInstance("UIGradient", name, parent, properties)
end

function module:UIListLayout(name: string, parent : Instance, properties : any)
	return createInstance("UIListLayout", name, parent, properties)
end

function module:UIGridLayout(name: string, parent : Instance, properties : any)
	return createInstance("UIGridLayout", name, parent, properties)
end

function module:UIAspectRatioConstraint(name: string, parent : Instance, properties : any)
	return createInstance("UIAspectRatioConstraint", name, parent, properties)
end

function module:UIPadding(name: string, parent : Instance, properties : any)
	return createInstance("UIPadding", name, parent, properties)
end

function module:ScrollingFrame(name: string, parent : Instance, properties : any)
	return createInstance("ScrollingFrame", name, parent, properties)
end

function module:ViewportFrame(name: string, parent : Instance, properties : any)
	return createInstance("ViewportFrame", name, parent, properties)
end

function module:TextBox(name: string, parent : Instance, properties : any)
	return createInstance("TextBox", name, parent, properties)
end

return module
