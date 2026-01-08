-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_DropShadowHolder"] = Instance.new("Frame");
	["_DropShadow"] = Instance.new("ImageLabel");
	["_TextLabel"] = Instance.new("TextLabel");
	["_TextButton"] = Instance.new("TextButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_TextButton1"] = Instance.new("TextButton");
	["_LocalScript1"] = Instance.new("LocalScript");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(15.000000055879354, 15.000000055879354, 15.000000055879354)
Converted["_Frame"].BackgroundTransparency = 0.10000000149011612
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.404341429, 0, 0.388698637, 0)
Converted["_Frame"].Size = UDim2.new(0.19087562, 0, 0.222431555, 0)
Converted["_Frame"].Parent = Converted["_ScreenGui"]

Converted["_DropShadowHolder"].BackgroundTransparency = 1
Converted["_DropShadowHolder"].BorderSizePixel = 0
Converted["_DropShadowHolder"].Size = UDim2.new(1, 0, 1, 0)
Converted["_DropShadowHolder"].ZIndex = 0
Converted["_DropShadowHolder"].Name = "DropShadowHolder"
Converted["_DropShadowHolder"].Parent = Converted["_Frame"]

Converted["_DropShadow"].Image = "rbxassetid://6014261993"
Converted["_DropShadow"].ImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropShadow"].ImageTransparency = 0.5
Converted["_DropShadow"].ScaleType = Enum.ScaleType.Slice
Converted["_DropShadow"].SliceCenter = Rect.new(49, 49, 450, 450)
Converted["_DropShadow"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DropShadow"].BackgroundTransparency = 1
Converted["_DropShadow"].BorderSizePixel = 0
Converted["_DropShadow"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_DropShadow"].Size = UDim2.new(1, 47, 1, 47)
Converted["_DropShadow"].ZIndex = 0
Converted["_DropShadow"].Name = "DropShadow"
Converted["_DropShadow"].Parent = Converted["_DropShadowHolder"]

Converted["_TextLabel"].Font = Enum.Font.Unknown
Converted["_TextLabel"].Text = "Are you in the offical discord server?"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(245.00000059604645, 245.00000059604645, 245.00000059604645)
Converted["_TextLabel"].TextSize = 25
Converted["_TextLabel"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0.0308404062, 0, 0.0538875945, 0)
Converted["_TextLabel"].Size = UDim2.new(0.93754828, 0, 0.234411135, 0)
Converted["_TextLabel"].Parent = Converted["_Frame"]

Converted["_TextButton"].Font = Enum.Font.Unknown
Converted["_TextButton"].Text = "No"
Converted["_TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].TextSize = 25
Converted["_TextButton"].TextWrapped = true
Converted["_TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].BackgroundTransparency = 1
Converted["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].BorderSizePixel = 0
Converted["_TextButton"].Position = UDim2.new(0.119506568, 0, 0.319476455, 0)
Converted["_TextButton"].Size = UDim2.new(0.760215998, 0, 0.184372649, 0)
Converted["_TextButton"].Parent = Converted["_Frame"]

Converted["_TextButton1"].Font = Enum.Font.Unknown
Converted["_TextButton1"].Text = "Yes"
Converted["_TextButton1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton1"].TextSize = 25
Converted["_TextButton1"].TextWrapped = true
Converted["_TextButton1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton1"].BackgroundTransparency = 1
Converted["_TextButton1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton1"].BorderSizePixel = 0
Converted["_TextButton1"].Position = UDim2.new(0.119506568, 0, 0.612009108, 0)
Converted["_TextButton1"].Size = UDim2.new(0.760215998, 0, 0.184372649, 0)
Converted["_TextButton1"].Parent = Converted["_Frame"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function OTHLZYE_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.TextButton.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_TextButton"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	script.Parent.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/Wjv42VgUzy")
		script.Parent.Text = "Copied!"
		wait(1)
		script.Parent.Text = "No"
	end)
end
local function GWEP_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.TextButton.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_TextButton1"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	script.Parent.MouseButton1Click:Connect(function()
    script.Parent.Parent.Parent:Destroy()
		-- what you wanna do 
	end)
end

coroutine.wrap(OTHLZYE_fake_script)()
coroutine.wrap(GWEP_fake_script)()
