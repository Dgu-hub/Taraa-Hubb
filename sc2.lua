local farmInterval = 0.5
local levelGoal = 100
local meleeName = "Combat"

local function farmAndLevelUp()
    
    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.Position)
            wait(0.1)
            game:GetService("ReplicatedStorage").MeleeAttack:FireServer(meleeName)
            wait(farmInterval)
        end
    end
  
    if game.Players.LocalPlayer.Character:FindFirstChild("Level") then
        local level = game.Players.LocalPlayer.Character.Level.Value
        if level < levelGoal then
            game:GetService("ReplicatedStorage").LevelUp:FireServer()
        end
    end
end

local function autoFarm()
    while true do
        farmAndLevelUp()
        wait(farmInterval)
    end
end

autoFarm()
