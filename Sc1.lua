print("Script Tara Hub")
print("Dibuat oleh: [@Tara]")
print("Versi: 1.0")
print("GitHub/YouTube: https://github.com/TaraGGHub")

local farmInterval = 1
local levelGoal = 100

local function farmAndLevelUp()
    game.ReplicatedStorage.FruitPick:FireServer()
    wait(farmInterval)
    if game.Players.LocalPlayer.Character:FindFirstChild("Level") then
        local level = game.Players.LocalPlayer.Character.Level.Value
        if level < levelGoal then
            game.ReplicatedStorage.LevelUp:FireServer()
        end
    end
end

local menu = {
    {nama = "Auto Farm", fungsi = function() while true do farmAndLevelUp() wait(farmInterval) end end},
    {nama = "Stop Auto Farm", fungsi = function() while true do wait(1) end end},
    {nama = "Keluar", fungsi = function() script:Destroy() end}
}

while true do
    for i, v in pairs(menu) do
        print(v.nama)
    end
    local pilihan = read()
    if pilihan == "1" then
        menu[1].fungsi()
    elseif pilihan == "2" then
        menu[2].fungsi()
    elseif pilihan == "3" then
        menu[3].fungsi()
    end
    wait(1)
end
