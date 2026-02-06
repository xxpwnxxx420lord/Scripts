module = {}

function module:Create({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('ScreenGui')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:Frame({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('Frame')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:TextLabel({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('TextLabel')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:TextButton({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('TextButton')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:ImageLabel({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('ImageLabel')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:ImageButton({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('ImageButton')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UICorner({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UICorner')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIStroke({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIStroke')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIGradient({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIGradient')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIListLayout({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIListLayout')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIGridLayout({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIGridLayout')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIAspectRatioConstraint({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIAspectRatioConstraint')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:UIpadding({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('UIPadding')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:ScrollingFrame({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('ScrollingFrame')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:ViewportFrame({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('ViewportFrame')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

function module:TextBox({
    Name,
    Parent,
    Properties = {},
})
    local Instance = Instance.new('TextBox')
    Instance.Name = Name
    Instance.Parent = Parent

    for Property, Value in pairs(Properties) do
        Instance[Property] = Value
    end

    return Instance
end

return module
