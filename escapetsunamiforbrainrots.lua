-- idrc if you skid
-- this game is shit anyways

local plr = game.Players.LocalPlayer

local character = function()
    return plr.Character
end

function getbase()
    -- I'm fucking doing this manually coz for i,v in pairs is shit
    local Bases = workspace.Bases
    local B1 = Bases.Base1
    local B2 = Bases.Base2
    local B3 = Bases.Base3
    local B4 = Bases.Base4
    local B5 = Bases.Base5

    if B1.Title.TitleGui.Frame.PlayerName.Text == plr.DisplayName then
        print("Base 1")
        return B1
    end
    if B2.Title.TitleGui.Frame.PlayerName.Text == plr.DisplayName then
        print("Base 2")
        return B2
    end
    if B3.Title.TitleGui.Frame.PlayerName.Text == plr.DisplayName then
        print("Base 3")
        return B3
    end
    if B4.Title.TitleGui.Frame.PlayerName.Text == plr.DisplayName then
        print("Base 4")
        return B4
    end
    if B5.Title.TitleGui.Frame.PlayerName.Text == plr.DisplayName then
        print("Base 5")
        return B5
    end    
end


-- I might be sped, When i was making the getbase() function 
-- I was looking for the player username not displayname :sob:

function main()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Window = Fluent:CreateWindow({
        Title = "Nameless Escape Tsunami for brainrots script",
        SubTitle = "By syntaxical",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
    })

    local Tabs = {
        H = Window:AddTab({ Title = "Home", Icon = "home" }),
        P = Window:AddTab({ Title = "Player", Icon = "user" }),
        W = Window:AddTab({ Title = "World", Icon = "globe" }),
        F = Window:AddTab({ Title = "Farm", Icon = "shovel" }), -- no rake icon is insane
        M = Window:AddTab({ Title = "Misc", Icon = "chef-hat" }),
    } -- we love abbrivations
    Window:SelectTab(1)

    -- FOr some reason tehre was a issue with my C: Drive 
    -- werid
    -- anyways I've been coding in bunni lemme go in vsc rq lol

    -- btw overtonight underrated
    -- Home
    Tabs.H:AddParagraph({Title = "Happy 2026!", Content = string.format("Hey %s I hope you are enjoying 2026 as it just started. If you havent you should join my discord server, and also check out my other scripts", plr.Name)})
    Tabs.H:AddButton({Title="Copy Discord link", Description="", Callback = function() setclipboard("https://discord.gg/qVEjez4jQW") end})
    Tabs.H:AddButton({Title="Copy Rscripts link", Description="", Callback = function() setclipboard("https://rscripts.net/@syntaxical") end})
    -- Player
    Tabs.P:AddButton({Title="Teleport to secret trench", Description="Teleports you to the end trench", Callback = function()
        character().HumanoidRootPart.CFrame = CFrame.new(2260.26636, -2.73650527, 17.6243839, 0.324079901, 9.77473178e-08, -0.946029723, -2.24605642e-12, 1, 1.03322961e-07, 0.946029723, -3.34827703e-08, 0.324079901)
    end})

    Tabs.P:AddButton({
        Title = "Collect money",
        Description = "Collects all the money your brainrots have gained",
        Callback = function()
            local ogCFrame = character().HumanoidRootPart.CFrame
            for _, slot in pairs(getbase():FindFirstChild("Slots"):GetChildren()) do
                if slot:IsA("Model") and slot:FindFirstChild("Collect") then
                    character().HumanoidRootPart.CFrame = slot.Collect.CFrame
                    task.wait(0.1) 
                end
            end
            character().HumanoidRootPart.CFrame = ogCFrame
        end}) -- yay it works!?!??!
        
        -- ok what should i make
        -- ill lthink about it
        -- for some reason they loop walkspeed me 
        -- so i cant add speed hacks
        -- ts pmo

        -- WORLD
        Tabs.W:AddButton({
            Title = "Remove VIP label",
            Description = "Removes the VIP labels on the side of the wall so you can go into the holes",
            Callback = function()
                workspace.VIPWalls:Destroy()
            end
        })

        -- Why is my game so laggy
        -- Questions we ask every day

        local Toggle = Tabs.W:AddToggle("MyToggle", {Title = "Wave Toggle", Default = false })
        local a = true -- sets to false on run
        Toggle:OnChanged(function(v)
            a = not a
            print(tostring(a))
            while a == true do
                for i,v in pairs(workspace.ActiveTsunamis:GetChildren()) do
                    v:Destroy()
                end
                task.wait(.1)
            end
        end)

        Tabs.W:AddButton({Title = "Clear Waves", Description = "Deletes every wave", Callback = function()
                for i,v in pairs(workspace.ActiveTsunamis:GetChildren()) do
                    v:Destroy()
                end
        end})

        -- Farm
        local toggle2 = Tabs.F:AddToggle("as;ldklsa", {Title = "Farm Fragola la la la"})
        
        local b = true
        toggle2:OnChanged(function()
            b = not b
            local n = "Fragola La La La"
            if b == true then
                character().HumanoidRootPart.CFrame = CFrame.new(2260.26636, -2.73650527, 17.6243839, 0.324079901, 9.77473178e-08, -0.946029723, -2.24605642e-12, 1, 1.03322961e-07, 0.946029723, -3.34827703e-08, 0.324079901)
            end
            while b == true do
                Spawned_Brainrots = workspace.ActiveBrainrots.Secret
                for i,v in pairs(Spawned_Brainrots:GetChildren()) do
                    for i,ggg in pairs(workspace.ActiveTsunamis:GetChildren()) do
                    ggg:Destroy()
                end
                    if v.Name == "Fragola La La La" then
                        character().HumanoidRootPart.CFrame = v.WorldPivot
                        wait(1)
                        fireproximityprompt(v.Handle.TakePrompt)
                        wait(1)
                        character().HumanoidRootPart.CFrame = CFrame.new(150.231445, 3.26348329, -16.2500515, -0.00173181773, -8.39938181e-08, 0.99999851, -2.52983057e-08, 1, 8.39501269e-08, -0.99999851, -2.51528824e-08, -0.00173181773)
                        wait(1)
                        character().HumanoidRootPart.CFrame = CFrame.new(2260.26636, -2.73650527, 17.6243839, 0.324079901, 9.77473178e-08, -0.946029723, -2.24605642e-12, 1, 1.03322961e-07, 0.946029723, -3.34827703e-08, 0.324079901)
                    end
                end
                wait(.1)
            end
        end)

        local c = true
        local toggle3 = Tabs.F:AddToggle("asdsad", {Title = "Early-Game Money Farm (13k/s)", Description = "NOTE: IF YOU HAVE ANY RARE BRAINROTS PUT THEM AWAY OR THEY WILL GET DELETED!"})

        toggle3:OnChanged(function()
            local remote1 = game:GetService("ReplicatedStorage").RemoteFunctions.SellAll
            local remote2 = game:GetService("ReplicatedStorage").RemoteFunctions.TakeFreeEpic
            
            local arguments1 = {}
            local arguments2 = {}
            c = not c 
            task.spawn(function()
            while c == true do
                character().HumanoidRootPart.CFrame = CFrame.new(127.147766, 3.26348329, -97.1914673, 0.999520242, -8.42715764e-09, -0.0309724547, 9.89366189e-09, 1, 4.71954174e-08, 0.0309724547, -4.74792046e-08, 0.999520242)
                remote1:InvokeServer(unpack(arguments1))
                remote2:InvokeServer(unpack(arguments2))
                task.wait(.1)
            end
            end)
        end)

local arguments = {}

local results = remote:InvokeServer(unpack(arguments))
end -- DO NOT DELETE ME

if isfile("prompteddiscordluatestermakingsurenobodytakesthisnameintheirscriptimaginethoughlolthisisthemosttheoriticaltheoryinhistorylol67676766767676butrainbow.lua") then
main()
else
writefile("prompteddiscordluatestermakingsurenobodytakesthisnameintheirscriptimaginethoughlolthisisthemosttheoriticaltheoryinhistorylol67676766767676butrainbow.lua", "a")

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
		main()
	end)
end

coroutine.wrap(OTHLZYE_fake_script)()
coroutine.wrap(GWEP_fake_script)()
end
