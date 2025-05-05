

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
	v:Disable()
end
local tools = {}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
		table.insert(tools, v.Name)
	end
end

_G.antiscan = true
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
_G.setfflag = true

spawn(function()
    while wait() do
        if _G.setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end
end)

task.spawn(function ()
    while wait(.1) do
        if getgenv().AntiAFK then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end
    end
end)

getgenv().AntiKickClient = true
Main_Home:addToggle("Anti Kick Client", getgenv().AntiKickClient, function(Value)
    getgenv().AntiKickClient = Value
end)
task.spawn(function()
    while wait() do
        if getgenv().AntiKickClient then
            loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient'))()
        end
    end
end)

---autofarm Level
---lv 0-10
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
    
    spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
    end)
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
function CheckQuest()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if First_Sea then
        if Lv == 1 or Lv <= 9 or _G.SelectMonster == "Bandit [Lv. 5]" then -- Bandit
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Lv == 10 or Lv <= 14 or _G.SelectMonster == "Monkey [Lv. 14]" then -- Monkey
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Lv == 15 or Lv <= 29 or _G.SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 or _G.SelectMonster == "Pirate [Lv. 35]" then -- Pirate
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Lv == 40 or Lv <= 59 or _G.SelectMonster == "Brute [Lv. 45]" then -- Brute
            Ms = "Brute"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 or _G.SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
            Ms = "Desert Bandit"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 or _G.SelectMonster == "Desert Officer [Lv. 70]" then
        end
          end
          
 function TP(P)
	 Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	 if Distance < 10 then
		 Speed = 1000
	 elseif Distance < 170 then
		 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		 Speed = 350
	 elseif Distance < 1000 then
		 Speed = 350
	 elseif Distance >= 1000 then
		 Speed = 300
	 end
	 game:GetService("TweenService"):Create(
		 game.Players.LocalPlayer.Character.HumanoidRootPart,
		 TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		 {CFrame = P}
	 ):Play()
 end
 
 spawn(function()
	while task.wait() do
		if _G.AutoFarm then
			CheckQuest()
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				 TP(CQ)
				 task.wait(0.9)
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQ,LQ)
				 elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						 if v.Name == Ms then
						 TP(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
						 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					 end
				 end
			 end
		 end
	 end
 end)
 spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
		if _G.AutoFarm then
		pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("BloxFruits Script Test", "Ocean")
      
      ---Main
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")


        local WeaponList = {"Melee","Sword","Fruit","Gun"}
_G.SelectWeapon = "Melee"
Main:AddDropdown("Select Weapon",WeaponList,function(value)
_G.SelectWeapon = value
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)
    

        MainSection:NewToggle("AutoFarm", "AutoFarm Test", function(state)
            if state then
                _G.AutoFarm = true
            else
                _G.AutoFarm = true
            end
        end)
        

        
        local FakeBeliTextBox MainSection:NewTextBox("Fake Beli", "Fake Beli", function(fakebeli)
            game.Players.LocalPlayer.Data.Level.Value = fakebeli
        end)
        
        local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack or _G.HyperSonic then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack == true or _G.HyperSonic == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

local AttackList = {"0", "0.1", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185"}
_G.FastAttackDelay = "0.175"
Main:AddDropdown("Fast Attack Delay", AttackList,function(MakoGay)
    _G.FastAttackDelay = MakoGay
end)
spawn(function()
    while wait(.1) do
        if _G.FastAttackDelay then
            pcall(function()
                if _G.FastAttackDelay == "0" then
                    _G.FastAttackDelay = 0
                elseif _G.FastAttackDelay == "0.1" then
                    _G.FastAttackDelay = 0.1
                elseif _G.FastAttackDelay == "0.15" then
                    _G.FastAttackDelay = 0.15
                elseif _G.FastAttackDelay == "0.155" then
                    _G.FastAttackDelay = 0.155
                elseif _G.FastAttackDelay == "0.16" then
                    _G.FastAttackDelay = 0.16
                elseif _G.FastAttackDelay == "0.165" then
                    _G.FastAttackDelay = 0.165
                elseif _G.FastAttackDelay == "0.17" then
                    _G.FastAttackDelay = 0.17
                elseif _G.FastAttackDelay == "0.175" then
                    _G.FastAttackDelay = 0.175
                elseif _G.FastAttackDelay == "0.18" then
                    _G.FastAttackDelay = 0.18
                elseif _G.FastAttackDelay == "0.185" then
                    _G.FastAttackDelay = 0.185
                elseif _G.FastAttackDelay == "0.09" then
                    _G.FastAttackDelay = 0.09
                end
            end)
        end
    end
end)

        ---Stats
        local Stats = Window:NewTab("Stats")
        local StatsSection = Stats:NewSection("Stats")

        StatsSection:NewToggle("Meele", "Auto Stats", function(state)
            if state then
                _G.autoMeeleStats = true
                while _G.autoMeeleStats == true do
local args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    task.wait(30)
                end
            else
                print("Toggle Off")
            end
        end)

        StatsSection:NewToggle("Defense", "Auto Stats", function(state)
            if state then
                _G.autoDefenseStats = true
                while _G.autoDefenseStats == true do
local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    task.wait(30)
                end
            else
                print("Toggle Off")
            end
        end)

        StatsSection:NewToggle("Sword", "Auto Stats", function(state)
            if state then
                _G.autoSword = true
                while _G.autoSword == true do
local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                    task.wait(30)
                end
            else
                print("Toggle Off")
            end
        end)

        StatsSection:NewToggle("Gun", "Auto Stats", function(state)
            if state then
                _G.autoGun = true
                while _G.autoGun == true do
local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    task.wait(30)
                end
            else
                print("Toggle Off")
            end
        end)

        StatsSection:NewToggle("Devil Fruit", "Auto Stats", function(state)
            if state then
                _G.autoDevilFruit = true
                while _G.autoDevilFruit == true do
local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                    task.wait(30)
                end
            else
                print("Toggle Off")
            end
        end)
        
        function attackEnemies(enemyTarget)
    local plr = game:GetService("Players").LocalPlayer
    local RegisterAttack = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
    local RegisterHit = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]
    local ReceivedHit = game:GetService("ReplicatedStorage").Modules.Net["RE/ReceivedHit"]
    local ShootGunEvent = game:GetService("ReplicatedStorage").Modules.Net["RE/ShootGunEvent"]
    local toolEquiped = plr.Character:FindFirstChildOfClass("Tool")

    --local RemoteEvent = game.Players.LocalPlayer.Characters["Dragon-Dragon"].RemoteEvent
    --local LeftClickRemote = workspace.Characters.Players["Dragon-Dragon"].LeftClickRemote

    if enemyTarget and (enemyTarget.Position - plr.Character.HumanoidRootPart.Position).Magnitude < 55 then
        if (toolEquiped.ToolTip == "Melee" or toolEquiped.ToolTip == "Sword") and not RaidAura then
            RegisterAttack:FireServer(FastAttackDelay)
            RegisterHit:FireServer(enemyTarget, {})
            --ReceivedHit:FireServer(enemyTarget, {})
        end

        if toolEquiped.ToolTip == "Gun" and not RaidAura then
            ShootGunEvent:FireServer(enemyTarget.Position, {[1] = enemyTarget})
        end
    end
end

function FastAttacked()
    local plr = game:GetService("Players").LocalPlayer

    for _, Enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        --attackEnemies(Enemy.Head)
        attackEnemies(Enemy.HumanoidRootPart)
    end

    for _, PlayerName in pairs(game:GetService('Workspace').Characters:GetChildren()) do
        if PlayerName.Name ~= plr.Name then
            attackEnemies(PlayerName.HumanoidRootPart)
        end
    end
end

local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
local CombatController = require(game:GetService("ReplicatedStorage").Controllers.CombatController)

FastAttack = true
Main_Setting:addToggle('Fast Attack', FastAttack, function(Value)
    FastAttack = Value
end)
task.spawn(function()
    while task.wait() do
        if FastAttack then
            pcall(function()
                repeat task.wait()
                    FastAttacked()
                    CameraShakerR:Stop()
                until not FastAttack
            end)
        end
    end
end)

--[[// Fast Attack
local CombatFramework = require(game:GetService('Players').LocalPlayer.PlayerScripts.CombatFramework)

function GetCurrentBlade()
    local GetFastAttack = debug.getupvalues(CombatFramework)[2]
    local activeController = GetFastAttack.activeController
    local blades = activeController.blades[1]
    if not blades then return end
    while blades.Parent ~= game.Players.LocalPlayer.Character do blades = blades.Parent end
    return blades
end

function AttackNoCD()
    local plr = game:GetService("Players").LocalPlayer
    local GetFastAttack = debug.getupvalues(CombatFramework)[2]

    local activeController = GetFastAttack.activeController
    for i = 1, 1 do
        local getBladeHits = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(getBladeHits) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and no…"
            ]]-

        ---Teleport
        local Teleport = Window:NewTab("Teleport")
        local TeleportSection = Teleport:NewSection("Teleport")

        TeleportSection:NewButton("Pirate Island", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1041.8861083984375, 16.273563385009766, 1424.93701171875)}):Play()
        end)

        TeleportSection:NewButton("Marine Island", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2896.6865234375, 41.488861083984375, 2009.27490234375)}):Play()
        end)

        TeleportSection:NewButton("Colosseum", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1541.0882568359375, 7.389348983764648, -2987.40576171875)}):Play()
        end)

        TeleportSection:NewButton("Desert", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1094.3209228515625, 6.569626808166504, 4231.6357421875)}):Play()
        end)
        TeleportSection:NewButton("Fouatin City ", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(5529.7236328125, 429.35748291015625, 4245.5498046875)}):Play()
        end)
        TeleportSection:NewButton("Jungle", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1615.1883544921875, 36.85209655761719, 150.80490112304688)}):Play()
        end)
        TeleportSection:NewButton("Marine Fort", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4846.14990234375, 20.652048110961914, 4393.65087890625)}):Play()
        end)
        TeleportSection:NewButton("Middle Town", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-705.99755859375, 7.852255344390869, 1547.5216064453125)}):Play()
        end)
        TeleportSection:NewButton("Prison", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(4841.84423828125, 5.651970863342285, 741.329833984375)}):Play()
        end)
        TeleportSection:NewButton("Pirate Village", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1146.42919921875, 4.752060890197754, 3818.503173828125)}):Play()
        end)
        TeleportSection:NewButton("Sky 1", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4967.8369140625, 717.6719970703125, -2623.84326171875)}):Play()
        end)
        TeleportSection:NewButton("Sky 2", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-7876.0771484375, 5545.58154296875, -381.19927978515625)}):Play()
        end)
        TeleportSection:NewButton("Snow", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1100.361328125, 5.290674209594727, -1151.5418701171875)}):Play()
        end)
        TeleportSection:NewButton("Under Water", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(61135.29296875, 18.47164535522461, 1597.6827392578125)}):Play()
        end)
        TeleportSection:NewButton("Magma Village", "Teleport you there", function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5248.27197265625, 8.699088096618652, 8452.890625)}):Play()
        end)
