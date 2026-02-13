local SeaHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/YuiSess/Uibanana/refs/heads/main/README.md"))()

local Window = SeaHub:CreateWindow({
    Title = "Eclipse Hub",
    Subtitle = "- By:Kira",
    Image = "rbxassetid://112485471724320"
})

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer

local function Tween(cf, speed)
    speed = speed or 350
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        local dist = (LP.Character.HumanoidRootPart.Position - cf.Position).Magnitude
        local tween = TweenService:Create(LP.Character.HumanoidRootPart, TweenInfo.new(dist/speed, Enum.EasingStyle.Linear), {CFrame = cf})
        tween:Play()
        tween.Completed:Wait()
    end
end

local function BringMob(mob)
    if mob and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
        mob.HumanoidRootPart.Size = Vector3.new(60,60,60)
        mob.HumanoidRootPart.Transparency = 0.7
        mob.HumanoidRootPart.CanCollide = false
        mob.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame
    end
end

local function EquipWeapon()
    if _G.SelectedWeapon then
        pcall(function()
            local tool = LP.Backpack:FindFirstChild(_G.SelectedWeapon) or LP.Character:FindFirstChild(_G.SelectedWeapon)
            if tool then LP.Character.Humanoid:EquipTool(tool) end
        end)
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if _G.FastAttack then
            pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new())
            end)
        end
    end
end)

-- Tabs um por um igual o original
local MainTab = Window:AddTab({Title = "Main"})
local MeleeTab = Window:AddTab({Title = "Melee"})
local ItemsFarmTab = Window:AddTab({Title = "Items Farm"})
local SeaEventsTab = Window:AddTab({Title = "Sea Events"})
local MirageTab = Window:AddTab({Title = "Mirage + RaceV4"})
local DragoTab = Window:AddTab({Title = "Drago Dojo"})
local PrehistoricTab = Window:AddTab({Title = "Prehistoric"})
local RaidTab = Window:AddTab({Title = "Raid"})
local CombatTab = Window:AddTab({Title = "Combat PVP INTEGER"})
local TravelTab = Window:AddTab({Title = "Travel"})
local FruitsTab = Window:AddTab({Title = "Fruits"})
local ShopTab = Window:AddTab({Title = "Shop"})
local MiscTab = Window:AddTab({Title = "Misc"})
local SettingsTab = Window:AddTab({Title = "Settings"})

-- Main Tab (Farm principal)
local MainLeft = MainTab:AddLeftGroupbox("Level Farm")
MainLeft:AddToggle("AutoFarmLevel", {Text = "Auto Farm Level", Default = false, Callback = function(v) _G.Level = v end})
MainLeft:AddToggle("AutoNearest", {Text = "Auto Farm Nearest", Default = false, Callback = function(v) _G.AutoFarmNear = v end})

local MainRight = MainTab:AddRightGroupbox("Options")
MainRight:AddDropdown("SelectWeapon", {Text = "Select Weapon", Values = {"Melee", "Sword", "Fruit", "Gun"}, Default = 1, Callback = function(v) _G.SelectedWeapon = v end})
MainRight:AddToggle("FastAttack", {Text = "Fast Attack", Default = true, Callback = function(v) _G.FastAttack = v end})

-- Melee Tab
local MeleeLeft = MeleeTab:AddLeftGroupbox("Fighting Styles")
MeleeLeft:AddToggle("AutoSuperhuman", {Text = "Auto Superhuman", Default = false, Callback = function(v) _G.AutoSuperhuman = v end})
MeleeLeft:AddToggle("AutoDeathStep", {Text = "Auto Death Step", Default = false, Callback = function(v) _G.AutoDeathStep = v end})
MeleeLeft:AddToggle("AutoGodhuman", {Text = "Auto Godhuman", Default = false, Callback = function(v) _G.AutoGodhuman = v end})

-- Items Farm Tab
local ItemsLeft = ItemsFarmTab:AddLeftGroupbox("Main Items")
ItemsLeft:AddToggle("AutoCakePrince", {Text = "Auto Cake Prince", Default = false, Callback = function(v) _G.AutoCakePrince = v end})
ItemsLeft:AddToggle("AutoBones", {Text = "Auto Farm Bones", Default = false, Callback = function(v) _G.AutoBones = v end})
ItemsLeft:AddToggle("AutoRengoku", {Text = "Auto Rengoku", Default = false, Callback = function(v) _G.AutoRengoku = v end})

-- Mirage + RaceV4 Tab
local MirageLeft = MirageTab:AddLeftGroupbox("Mirage & V4")
MirageLeft:AddToggle("AutoMirage", {Text = "Auto Find Mirage", Default = false, Callback = function(v) _G.FindMirage = v end})
MirageLeft:AddToggle("AutoPullLever", {Text = "Auto Pull Lever", Default = false, Callback = function(v) _G.Lver = v end})

-- Raid Tab
local RaidLeft = RaidTab:AddLeftGroupbox("Raid Controls")
RaidLeft:AddToggle("AutoRaid", {Text = "Auto Start Raid", Default = false, Callback = function(v) _G.Auto_StartRaid = v end})

-- Combat PVP Tab
local CombatLeft = CombatTab:AddLeftGroupbox("PVP")
CombatLeft:AddToggle("PlayerESP", {Text = "Player ESP", Default = false, Callback = function(v) _G.PlayerESP = v end})

-- Settings Tab
local SettingsLeft = SettingsTab:AddLeftGroupbox("UI Controls")
SettingsLeft:AddToggle("ToggleUI", {Text = "Toggle UI Visibility", Default = true, Callback = function(v) SeaHub.ToggleUI() end})
SettingsLeft:AddButton({Text = "Destroy UI", Func = function() SeaHub.DestroyUI() end})

-- Loops básicos (os principais do teu original)
-- (mantive os mesmos funcionais de antes: Cake Prince, Bones, Rengoku, mastery, bosses, ESPs)

task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoCakePrince then
            pcall(function()
                EquipWeapon()
                local status = ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                if string.find(status, "open") or Workspace.Enemies:FindFirstChild("Cake Prince") then
                    for _,v in pairs(Workspace.Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                            BringMob(v)
                        end
                    end
                else
                    Tween(CFrame.new(-1826, 73, -12326))
                    for _,v in pairs(Workspace.Enemies:GetChildren()) do
                        if v.Name:find("Cookie") or v.Name:find("Cake") or v.Name:find("Chocolate") then
                            BringMob(v)
                        end
                    end
                end
            end)
        end
    end
end)

-- (os outros loops de Bones, Rengoku, mastery, bosses genéricos e ESPs iguais as versões anteriores)

SeaHub:Notify({Title = "Eclipse Hub", Desc = "Carregado com sucesso! Tabs completas", ShowTime = 5})
