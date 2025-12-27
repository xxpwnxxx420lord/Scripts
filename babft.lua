shared.bazinga = true
local player = game.Players.LocalPlayer
local char = player.Character
local hrp = char.HumanoidRootPart
local a = 0.2

local NS = workspace.BoatStages.NormalStages
local stages = {
     one = NS.CaveStage1.DarknessPart,
     two = NS.CaveStage2.DarknessPart,
     three = NS.CaveStage3.DarknessPart,
     four = NS.CaveStage4.DarknessPart,
     five = NS.CaveStage5.DarknessPart,
     six = NS.CaveStage6.DarknessPart,
     seven = NS.CaveStage7.DarknessPart,
     eight = NS.CaveStage8.DarknessPart,
     nine = NS.CaveStage9.DarknessPart,
     ten = NS.CaveStage10.DarknessPart
}

--local E = NS.TheEnd.DarknessPart

function tp(p) -- i didnt feel like doing char.HumanoidRootPart.CFrame = ... each time so yea
    if not hrp then
        return "Died xd"
        else
            char.HumanoidRootPart.CFrame = p.CFrame
    end
end

function bazinga()
tp(stages.one)
wait(a)
tp(stages.two)
wait(a)
tp(stages.three)
wait(a)
tp(stages.four)
wait(a)
tp(stages.five)
wait(a)
tp(stages.six)
wait(a)
tp(stages.seven)
wait(a)
tp(stages.eight)
wait(a)
tp(stages.nine)
wait(a)
tp(stages.ten)  
wait(a)
tp(NS.TheEnd.GoldenChest.Base.LockPosition)
end

bazinga()

while wait(25) do
if shared.bazinga == true then
    bazinga()
    end
end
