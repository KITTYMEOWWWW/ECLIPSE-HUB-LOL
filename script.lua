task.spawn(function()
    local HttpService = game:GetService("HttpService")
    local Players = game:GetService("Players")
    local LP = Players.LocalPlayer

    repeat task.wait() until game:IsLoaded()
    repeat task.wait() until LP and LP.Character

    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDangNhoEm/TuanAnhIOS/refs/heads/main/koby"))()
    end)

    if not success then
        warn("Falha ao executar auto-load:", err)
    end
end)
do
  ply = game.Players
  plr = ply.LocalPlayer
  Root = plr.Character.HumanoidRootPart
  replicated = game:GetService("ReplicatedStorage")
  Lv = game.Players.LocalPlayer.Data.Level.Value
  TeleportService = game:GetService("TeleportService")
  TW = game:GetService("TweenService")
  Lighting = game:GetService("Lighting")  
  Enemies = workspace.Enemies
  vim1 = game:GetService("VirtualInputManager")
  vim2 = game:GetService("VirtualUser")
  TeamSelf = plr.Team
  RunSer = game:GetService("RunService")
  Stats = game:GetService("Stats")  
  Energy = plr.Character.Energy.Value
  Boss = {}
  BringConnections = {}
  MaterialList = {}
  NPCList = {}  
  shouldTween = false
  SoulGuitar = false
  KenTest = true
  debug = false
  Brazier1 = false
  Brazier2 = false
  Brazier3 = false  
  Sec = 0.1
  ClickState = 0
  Num_self = 25
end
repeat local start = plr.PlayerGui:WaitForChild("Main"):WaitForChild("Loading") and game:IsLoaded() wait() until start
World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
Sea = World1 or World2 or World3 or plr:Kick("❌ Error : A[12]Blox Fruits ❌ Incorrect place ID, please wait for an update. ")
Marines = function() replicated.Remotes.CommF_:InvokeServer("SetTeam","Marines") end
Pirates = function() replicated.Remotes.CommF_:InvokeServer("SetTeam","Pirates") end
if World1 then Boss = {"The Gorilla King","Bobby","The Saw","Yeti","Mob Leader","Vice Admiral","Saber Expert","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Ice Admiral","Greybeard"}
elseif World2 then Boss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Awakened Ice Admiral","Tide Keeper","Darkbeard","Cursed Captain","Order"}
elseif World3 then Boss = {"Stone","Hydra Leader","Kilo Admiral","Captain Elephant","Beautiful Pirate","Cake Queen","Longma","Soul Reaper"}
end
if World1 then MaterialList = {"Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"}
elseif World2 then MaterialList = {"Leather + Scrap Metal", "Radioactive Material", "Ectoplasm", "Mystic Droplet", "Magma Ore", "Vampire Fang"}
elseif World3 then MaterialList = {"Scrap Metal", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail", "Mini Tusk"}
end
local DungeonTables = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
local RenMon = {"Snow Lurker","Arctic Warrior","Hidden Key","Awakened Ice Admiral"}
local CursedTables = {["Mob"] = "Mythological Pirate",["Mob2"] = "Cursed Skeleton","Hell's Messenger",["Mob3"] = "Cursed Skeleton","Heaven's Guardian"}
local Past = {"Part","SpawnLocation","Terrain","WedgePart","MeshPart"}
local BartMon = {"Swan Pirate","Jeremy"}
local CitizenTable = {"Forest Pirate","Captain Elephant"}
local Human_v3_Mob = {"Fajita","Jeremy","Diamond"}
local AllBoats = {"Beast Hunter","Lantern","Guardian","Grand Brigade","Dinghy","Sloop","The Sentinel"}
local mastery1 = {"Cookie Crafter"}
local mastery2 = {"Reborn Skeleton"}
local PosMsList = {["Pirate Millionaire"] = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625),["Pistol Billionaire"] = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625),["Dragon Crew Warrior"] = CFrame.new(7021.50439453125, 55.76270294189453, -730.1290893554688),["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),["Venomous Assailant"] = CFrame.new(4902, 670, 39), ["Marine Commodore"] = CFrame.new(2401, 123, -7589),["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),["Fishman Raider"] = CFrame.new(-10941, 332, -8760),["Fishman Captain"] = CFrame.new(-11035, 332, -9087),["Forest Pirate"] = CFrame.new(-13446, 413, -7760),["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),["Living Zombie"] = CFrame.new(-10227, 421, 6161),["Demonic Soul"] = CFrame.new(-9579, 6, 6194),["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),["Peanut Scout"] = CFrame.new(-1993, 187, -10103),["Peanut President"] = CFrame.new(-2215, 159, -10474),["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),["Cake Guard"] = CFrame.new(-2024, 38, -12026),["Baking Staff"] = CFrame.new(-1932, 38, -12848),["Head Baker"] = CFrame.new(-1932, 38, -12848),["Cocoa Warrior"] = CFrame.new(95, 73, -12309),["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),["Sweet Thief"] = CFrame.new(116, 36, -12478),["Candy Rebel"] = CFrame.new(47, 61, -12889),["Ghost"] = CFrame.new(5251, 5, 1111)}
EquipWeapon = function(text)
  if not text then return end
  if plr.Backpack:FindFirstChild(text) then
	plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(text))
  end
end
weaponSc = function(weapon)
  for __in, v in pairs(plr.Backpack:GetChildren()) do
    if v:IsA("Tool") then
      if v.ToolTip == weapon then EquipWeapon(v.Name) end
    end
  end
end
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death),function() end)
hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC,function()end)
hookfunction(error, function()end)
hookfunction(warn, function()end)
local Rock = workspace:FindFirstChild("Rocks")
if Rock then Rock:Destroy()end
gay = (function()
  local lighting = game:GetService("Lighting")
  local lightingLayers = lighting:FindFirstChild("LightingLayers")
  if lightingLayers and game:GetService("Lighting") and game:GetService("Lighting") then
    local darkFog = lightingLayers:FindFirstChild("DarkFog")
    if darkFog then darkFog:Destroy() end
  end
  local Water = workspace._WorldOrigin["Foam;"]
  if Water and workspace._WorldOrigin["Foam;"] then Water:Destroy() end        
end)()
local Attack = {}
Attack.__index = Attack
Attack.Alive = function(model) if not model then return end local Humanoid = model:FindFirstChild("Humanoid") return Humanoid and Humanoid.Health > 0 end
Attack.Pos = function(model,dist) return (Root.Position - mode.Position).Magnitude <= dist end
Attack.Dist = function(model,dist) return (Root.Position - model:FindFirstChild("HumanoidRootPart").Position).Magnitude <= dist end
Attack.DistH = function(model,dist) return (Root.Position - model:FindFirstChild("HumanoidRootPart").Position).Magnitude > dist end
Attack.Kill = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
  EquipWeapon(_G.SelectWeapon)
  local Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
  local ToolTip = Equipped.ToolTip
  if ToolTip == "Blox Fruit" then _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) else _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0) * CFrame.Angles(0,math.rad(180),0))end
  if RandomCFrame then wait(.5)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(.5)_tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) wait(.5)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) wait(.5)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(.5)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))end
  end
end
Attack.Kill2 = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
  EquipWeapon(_G.SelectWeapon)
  local Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
  local ToolTip = Equipped.ToolTip
  if ToolTip == "Blox Fruit" then _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) else _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,8) * CFrame.Angles(0,math.rad(180),0))end
  if RandomCFrame then wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))end
  end
end
Attack.KillSea = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
  EquipWeapon(_G.SelectWeapon)
  local Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
  local ToolTip = Equipped.ToolTip
  if ToolTip == "Blox Fruit" then _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) else notween(model.HumanoidRootPart.CFrame * CFrame.new(0,50,8)) wait(.85)notween(model.HumanoidRootPart.CFrame * CFrame.new(0,400,0)) wait(1)end
  end
end
Attack.Sword = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
  weaponSc("Sword")
  _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
  if RandomCFrame then wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) wait(0.1)_tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))end
  end
end
Attack.Mas = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
    if model.Humanoid.Health <= HealthM then
      _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
      Useskills("Blox Fruit","Z")
      Useskills("Blox Fruit","X")
      Useskills("Blox Fruit","C")
    else
      weaponSc("Melee")
      _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    end
  end
end
Attack.Masgun = function(model,Succes)
  if model and Succes then
  if not model:GetAttribute("Locked") then model:SetAttribute("Locked",model.HumanoidRootPart.CFrame) end
  PosMon = model:GetAttribute("Locked").Position
  BringEnemy()
    if model.Humanoid.Health <= HealthM then
      _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,35,8))
      Useskills("Gun","Z")
      Useskills("Gun","X")
    else
      weaponSc("Melee")
      _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    end
  end
end
statsSetings = function(Num, value)
  if Num == "Melee" then
    if plr.Data.Points.Value ~= 0 then
      replicated.Remotes.CommF_:InvokeServer("AddPoint","Melee",value)
    end
  elseif Num == "Defense" then
    if plr.Data.Points.Value ~= 0 then
      replicated.Remotes.CommF_:InvokeServer("AddPoint","Defense",value)
    end
  elseif Num == "Sword" then
    if plr.Data.Points.Value ~= 0 then
      replicated.Remotes.CommF_:InvokeServer("AddPoint","Sword",value)
    end
  elseif Num == "Gun" then
    if plr.Data.Points.Value ~= 0 then
      replicated.Remotes.CommF_:InvokeServer("AddPoint","Gun",value)
    end
  elseif Num == "Devil" then
    if plr.Data.Points.Value ~= 0 then
      replicated.Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",value)
    end
  end
end
BringEnemy = function()
  if not _B then return end
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
	  if (v.PrimaryPart.Position - PosMon).Magnitude <= 300 then
	    v.PrimaryPart.CFrame = CFrame.new(PosMon)
		v.PrimaryPart.CanCollide = true;
		v:FindFirstChild("Humanoid").WalkSpeed = 0;
		v:FindFirstChild("Humanoid").JumpPower = 0;
		if v.Humanoid:FindFirstChild("Animator") then v.Humanoid.Animator:Destroy()end;
		plr.SimulationRadius = math.huge
	  end
	end                               
  end                    	
end
Useskills = function(weapon, skill)
  if weapon == "Melee" then
    weaponSc("Melee")
    if skill == "Z" then
      vim1:SendKeyEvent(true, "Z", false, game);
      vim1:SendKeyEvent(false, "Z", false, game);
    elseif skill == "X" then
      vim1:SendKeyEvent(true, "X", false, game);
      vim1:SendKeyEvent(false, "X", false, game);
    elseif skill == "C" then
      vim1:SendKeyEvent(true, "C", false, game);
      vim1:SendKeyEvent(false, "C", false, game);
    end
  elseif weapon == "Sword" then
    weaponSc("Sword")
    if skill == "Z" then
      vim1:SendKeyEvent(true, "Z", false, game);
      vim1:SendKeyEvent(false, "Z", false, game);
    elseif skill == "X" then
      vim1:SendKeyEvent(true, "X", false, game);
      vim1:SendKeyEvent(false, "X", false, game);
    end
  elseif weapon == "Blox Fruit" then
    weaponSc("Blox Fruit")
    if skill == "Z" then
      vim1:SendKeyEvent(true, "Z", false, game);
      vim1:SendKeyEvent(false, "Z", false, game);
    elseif skill == "X" then
      vim1:SendKeyEvent(true, "X", false, game);
      vim1:SendKeyEvent(false, "X", false, game);
    elseif skill == "C" then
      vim1:SendKeyEvent(true, "C", false, game);
      vim1:SendKeyEvent(false, "C", false, game);        
    elseif skill == "V" then
      vim1:SendKeyEvent(true, "V", false, game);
      vim1:SendKeyEvent(false, "V", false, game);
    end
  elseif weapon == "Gun" then
    weaponSc("Gun")
    if skill == "Z" then
      vim1:SendKeyEvent(true, "Z", false, game);
      vim1:SendKeyEvent(false, "Z", false, game);
    elseif skill == "X" then
      vim1:SendKeyEvent(true, "X", false, game);
      vim1:SendKeyEvent(false, "X", false, game);
    end
  end
  if weapon == "nil" and skill == "Y" then
    vim1:SendKeyEvent(true, "Y", false, game);
    vim1:SendKeyEvent(false, "Y", false, game);
  end
end
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg, false)
gg.__namecall = newcclosure(function(...)
  local method = getnamecallmethod()
  local args = {...}    
    if tostring(method) == "FireServer" then
      if tostring(args[1]) == "RemoteEvent" then
        if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
          if (_G.FarmMastery_G and not SoulGuitar) or (_G.FarmMastery_Dev) or (_G.FarmBlazeEM) or (_G.Prehis_Skills) or (_G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials) or (_G.AimMethod and ABmethod == "AimBots Skill") or (_G.AimMethod and ABmethod == "Auto Aimbots") then
            args[2] = MousePos
            return old(unpack(args))
          end
        end
      end
    end
  return old(...)
end)
GetConnectionEnemies = function(a)
  for i,v in pairs(replicated:GetChildren()) do
    if v:IsA("Model") and  ((typeof(a) == "table" and table.find(a, v.Name)) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
      return v
    end
  end
  for i,v in next,game.Workspace.Enemies:GetChildren() do
    if v:IsA("Model") and ((typeof(a) == "table" and table.find(a, v.Name)) or v.Name == a)  and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
      return v
    end
  end
end
LowCpu = function()
  local decalsyeeted = true
  local g = game
  local w = g.Workspace
  local l = g.Lighting
  local t = w.Terrain
  t.WaterWaveSize = 0
  t.WaterWaveSpeed = 0
  t.WaterReflectance = 0
  t.WaterTransparency = 0
  l.GlobalShadows = false
  l.FogEnd = 9e9
  l.Brightness = 0
  settings().Rendering.QualityLevel = "Level01"
  for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
      v.Material = "Plastic"
      v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
      v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
      v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
      v.BlastPressure = 1
      v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
      v.Enabled = false
    elseif v:IsA("MeshPart") then
      v.Material = "Plastic"
      v.Reflectance = 0
      v.TextureID = 10385902758728957
    end
  end
  for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
      e.Enabled = false
    end
  end
end
CheckF = function()
  if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then return true end
end
CheckBoat = function()
  for i, v in pairs(workspace.Boats:GetChildren()) do
    if tostring(v.Owner.Value) == tostring(plr.Name) then
      return v    
end;
  end;
  return false
end;
CheckEnemiesBoat = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "FishBoat") and v:FindFirstChild("Health").Value > 0 then
      return true    
end;
  end;
  return false
end;
CheckPirateGrandBrigade = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "PirateGrandBrigade" or v.Name == "PirateBrigade") and v:FindFirstChild("Health").Value > 0 then
      return true
    end
  end
  return false
end
CheckShark = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Shark" and Attack.Alive(v) then
      return true    
end;
  end;
  return false
end;
CheckTerrorShark = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Terrorshark" and Attack.Alive(v) then
      return true    
end;
  end;
  return false
end;
CheckPiranha = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if v.Name == "Piranha" and Attack.Alive(v) then
      return true    
end;
  end;
  return false
end;
CheckFishCrew = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "Fish Crew Member" or v.Name == "Haunted Crew Member") and Attack.Alive(v) then
      return true    
end;
  end;
  return false
end;
CheckHauntedCrew = function()
  for _,v in pairs(workspace.Enemies:GetChildren()) do
    if (v.Name == "Haunted Crew Member") and Attack.Alive(v) then
      return true    
end;
  end;
  return false
end;
CheckSeaBeast = function()
  if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
    return true  
end;
  return false
end;
CheckLeviathan = function()
  if workspace.SeaBeasts:FindFirstChild("Leviathan") then
    return true  
end;
  return false
end;
UpdStFruit = function()
  for z,x in next, plr.Backpack:GetChildren() do
  StoreFruit = x:FindFirstChild("EatRemote", true)
    if StoreFruit then
      replicated.Remotes.CommF_:InvokeServer("StoreFruit",StoreFruit.Parent:GetAttribute("OriginalName"),
      plr.Backpack:FindFirstChild(x.Name))
    end
  end
end
collectFruits = function(Succes)
  if Succes then
    local Character = plr.Character
    for _,v1 in pairs(workspace:GetChildren()) do
    if string.find(v1.Name, "Fruit") then v1.Handle.CFrame = Character.HumanoidRootPart.CFrame end
    end
  end
end
Getmoon = function()
  if World1 then
    return Lighting.FantasySky.MoonTextureId
  elseif World2 then
    return Lighting.FantasySky.MoonTextureId
  elseif World3 then
    return Lighting.Sky.MoonTextureId
  end
end
DropFruits = function()
  for _,v3 in next, plr.Backpack:GetChildren() do
    if string.find(v3.Name, "Fruit") then
      EquipWeapon(v3.Name) wait(.1)
      if plr.PlayerGui.Main.Dialogue.Visible == true then plr.PlayerGui.Main.Dialogue.Visible = false end EquipWeapon(v3.Name) plr.Character:FindFirstChild(v3.Name).EatRemote:InvokeServer("Drop")
    end
  end
  for a,b2 in pairs(plr.Character:GetChildren()) do
    if string.find(b2.Name, "Fruit") then EquipWeapon(b2.Name) wait(.1)
    if plr.PlayerGui.Main.Dialogue.Visible == true then plr.PlayerGui.Main.Dialogue.Visible = false end EquipWeapon(b2.Name) plr.Character:FindFirstChild(b2.Name).EatRemote:InvokeServer("Drop")
    end
  end
end
GetBP = function(v)
  return plr.Backpack:FindFirstChild(v) or plr.Character:FindFirstChild(v)
end
GetIn = function(Name)
  for _ ,v1 in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
    if type(v1) == "table" then
      if v1.Name == Name or plr.Character:FindFirstChild(Name) or plr.Backpack:FindFirstChild(Name) then
        return true
	 end
    end
  end
  return false
end
GetM = function(Name)
  for _,tab in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
    if type(tab) == "table" then
	  if tab.Type == "Material" then
	    if tab.Name == Name then
		  return tab.Count
	    end
	  end
    end
  end
return 0
end
GetWP = function(nametool)
  for _,v4 in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
    if type(v4) == "table" then
      if v4.Type == "Sword" then
        if v4.Name == nametool or plr.Character:FindFirstChild(nametool) or plr.Backpack:FindFirstChild(nametool) then
	     return true
	     end
	   end
      end
    end
  return false
end 
getInfinity_Ability = function(Method, Var)
  if not Root then return end
  if Method == "Soru" and Var then
    for _,gc in next, getgc() do
      if plr.Character.Soru then
        if ((typeof(gc) == "function") and (getfenv(gc).script == plr.Character.Soru)) then
          for _, v in next, getupvalues(gc) do
            if (typeof(v) == "table") then
              repeat wait(Sec) v.LastUse = 0 until not Var or (plr.Character.Humanoid.Health <= 0)
            end
          end
        end
      end
    end    
  elseif Method == "Energy" and Var then
    plr.Character.Energy.Changed:connect(function()
      if Var then plr.Character.Energy.Value = Energy end 
    end)
  elseif Method == "Observation" and Var then
    local VisionRadius = plr.VisionRadius
    VisionRadius.Value = math.huge
  end
end
Hop = function()
  pcall(function()
    for count = math.random(1, math.random(40, 75)), 100 do
      local remote = replicated.__ServerBrowser:InvokeServer(count)
	  for _, v in next, remote do
	  if tonumber(v['Count']) < 12 then TeleportService:TeleportToPlaceInstance(game.PlaceId, _) end
	  end    
    end
  end)
end
local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "Rip_Indra"
block.Anchored = true
block.CanCollide = false
block.CanTouch = false
block.Transparency = 1
local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then blockfind:Destroy() end
task.spawn(function()while task.wait()do if block and block.Parent==workspace then if shouldTween then getgenv().OnFarm=true else getgenv().OnFarm=false end else getgenv().OnFarm=false end end end)
task.spawn(function()local a=game.Players.LocalPlayer;repeat task.wait()until a.Character and a.Character.PrimaryPart;block.CFrame=a.Character.PrimaryPart.CFrame;while task.wait()do pcall(function()if getgenv().OnFarm then if block and block.Parent==workspace then local b=a.Character and a.Character.PrimaryPart;if b and(b.Position-block.Position).Magnitude<=200 then b.CFrame=block.CFrame else block.CFrame=b.CFrame end end;local c=a.Character;if c then for d,e in pairs(c:GetChildren())do if e:IsA("BasePart")then e.CanCollide=false end end end else local c=a.Character;if c then for d,e in pairs(c:GetChildren())do if e:IsA("BasePart")then e.CanCollide=true end end end end end)end end)
_tp = function(target)
  local character = plr.Character
  if not character or not character:FindFirstChild("HumanoidRootPart") then return end
  local rootPart = character.HumanoidRootPart
  local distance = (target.Position - rootPart.Position).Magnitude
  local tweenInfo = TweenInfo.new(distance / 300, Enum.EasingStyle.Linear)
  local tween = game:GetService("TweenService"):Create(block, tweenInfo, {CFrame = target})    
  if plr.Character.Humanoid.Sit == true then
    block.CFrame = CFrame.new(block.Position.X, target.Y, block.Position.Z)
  end  
  tween:Play()    
  task.spawn(function() while tween.PlaybackState == Enum.PlaybackState.Playing do if not shouldTween then tween:Cancel() break end task.wait(0.1) end end)
end
TeleportToTarget = function(targetCFrame) if (targetCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then _tp(targetCFrame)else _tp(targetCFrame)end end
notween = function(p) plr.Character.HumanoidRootPart.CFrame = p end
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
spawn(function()
  while task.wait() do
    pcall(function()
      if _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago  or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or getgenv().AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.AutoPole or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S then
        shouldTween = true
        if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
          local Noclip = Instance.new("BodyVelocity")
          Noclip.Name = "BodyClip"
          Noclip.Parent = plr.Character.HumanoidRootPart
          Noclip.MaxForce = Vector3.new(100000,100000,100000)
          Noclip.Velocity = Vector3.new(0,0,0)
        end        
        if not plr.Character:FindFirstChild('highlight') then
          local Test = Instance.new('Highlight')
          Test.Name = "highlight"
          Test.Enabled = true
          Test.FillColor = Color3.fromRGB(2,197,60)
          Test.OutlineColor = Color3.fromRGB(255,255,255)
          Test.FillTransparency = 0.5
          Test.OutlineTransparency = 1
          Test.Parent = plr.Character
        end
        for _, no in pairs(plr.Character:GetDescendants()) do if no:IsA("BasePart") then no.CanCollide = false end end
      else
        shouldTween = false
        if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then plr.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy() end
        if plr.Character:FindFirstChild('highlight') then plr.Character:FindFirstChild('highlight'):Destroy() end	        
      end
    end)
  end
end)
QuestB=function()if World1 then if _G.FindBoss=="The Gorilla King"then bMon="The Gorilla King"Qname="JungleQuest"Qdata=3;PosQBoss=CFrame.new(-1601.6553955078,36.85213470459,153.38809204102)PosB=CFrame.new(-1088.75977,8.13463783,-488.559906,-0.707134247,0,0.707079291,0,1,0,-0.707079291,0,-0.707134247)elseif _G.FindBoss=="Bobby"then bMon="Bobby"Qname="BuggyQuest1"Qdata=3;PosQBoss=CFrame.new(-1140.1761474609,4.752049446106,3827.4057617188)PosB=CFrame.new(-1087.3760986328,46.949409484863,4040.1462402344)elseif _G.FindBoss=="The Saw"then bMon="The Saw"PosB=CFrame.new(-784.89715576172,72.427383422852,1603.5822753906)elseif _G.FindBoss=="Yeti"then bMon="Yeti"Qname="SnowQuest"Qdata=3;PosQBoss=CFrame.new(1386.8073730469,87.272789001465,-1298.3576660156)PosB=CFrame.new(1218.7956542969,138.01184082031,-1488.0262451172)elseif _G.FindBoss=="Mob Leader"then bMon="Mob Leader"PosB=CFrame.new(-2844.7307128906,7.4180502891541,5356.6723632813)elseif _G.FindBoss=="Vice Admiral"then bMon="Vice Admiral"Qname="MarineQuest2"Qdata=2;PosQBoss=CFrame.new(-5036.2465820313,28.677835464478,4324.56640625)PosB=CFrame.new(-5006.5454101563,88.032081604004,4353.162109375)elseif _G.FindBoss=="Saber Expert"then bMon="Saber Expert"PosB=CFrame.new(-1458.89502,29.8870335,-50.633564)elseif _G.FindBoss=="Warden"then bMon="Warden"Qname="ImpelQuest"Qdata=1;PosB=CFrame.new(5278.04932,2.15167475,944.101929,0.220546961,-4.49946401e-06,0.975376427,-1.95412576e-05,1,9.03162072e-06,-0.975376427,-2.10519756e-05,0.220546961)PosQBoss=CFrame.new(5191.86133,2.84020686,686.438721,-0.731384635,0,0.681965172,0,1,0,-0.681965172,0,-0.731384635)elseif _G.FindBoss=="Chief Warden"then bMon="Chief Warden"Qname="ImpelQuest"Qdata=2;PosB=CFrame.new(5206.92578,0.997753382,814.976746,0.342041343,-0.00062915677,0.939684749,0.00191645394,0.999998152,-2.80422337e-05,-0.939682961,0.00181045406,0.342041939)PosQBoss=CFrame.new(5191.86133,2.84020686,686.438721,-0.731384635,0,0.681965172,0,1,0,-0.681965172,0,-0.731384635)elseif _G.FindBoss=="Swan"then bMon="Swan"Qname="ImpelQuest"Qdata=3;PosB=CFrame.new(5325.09619,7.03906584,719.570679,-0.309060812,0,0.951042235,0,1,0,-0.951042235,0,-0.309060812)PosQBoss=CFrame.new(5191.86133,2.84020686,686.438721,-0.731384635,0,0.681965172,0,1,0,-0.681965172,0,-0.731384635)elseif _G.FindBoss=="Magma Admiral"then bMon="Magma Admiral"Qname="MagmaQuest"Qdata=3;PosQBoss=CFrame.new(-5314.6220703125,12.262420654297,8517.279296875)PosB=CFrame.new(-5765.8969726563,82.92064666748,8718.3046875)elseif _G.FindBoss=="Fishman Lord"then bMon="Fishman Lord"Qname="FishmanQuest"Qdata=3;PosQBoss=CFrame.new(61122.65234375,18.497442245483,1569.3997802734)PosB=CFrame.new(61260.15234375,30.950881958008,1193.4329833984)elseif _G.FindBoss=="Wysper"then bMon="Wysper"Qname="SkyExp1Quest"Qdata=3;PosQBoss=CFrame.new(-7861.947265625,5545.517578125,-379.85974121094)PosB=CFrame.new(-7866.1333007813,5576.4311523438,-546.74816894531)elseif _G.FindBoss=="Thunder God"then bMon="Thunder God"Qname="SkyExp2Quest"Qdata=3;PosQBoss=CFrame.new(-7903.3828125,5635.9897460938,-1410.923828125)PosB=CFrame.new(-7994.984375,5761.025390625,-2088.6479492188)elseif _G.FindBoss=="Cyborg"then bMon="Cyborg"Qname="FountainQuest"Qdata=3;PosQBoss=CFrame.new(5258.2788085938,38.526931762695,4050.044921875)PosB=CFrame.new(6094.0249023438,73.770050048828,3825.7348632813)elseif _G.FindBoss=="Ice Admiral"then bMon="Ice Admiral"Qdata=nil;PosQBoss=CFrame.new(1266.08948,26.1757946,-1399.57678,-0.573599219,0,-0.81913656,0,1,0,0.81913656,0,-0.573599219)PosB=CFrame.new(1266.08948,26.1757946,-1399.57678,-0.573599219,0,-0.81913656,0,1,0,0.81913656,0,-0.573599219)elseif _G.FindBoss=="Greybeard"then bMon="Greybeard"Qdata=nil;PosQBoss=CFrame.new(-5081.3452148438,85.221641540527,4257.3588867188)PosB=CFrame.new(-5081.3452148438,85.221641540527,4257.3588867188)end end;if World2 then if _G.FindBoss=="Diamond"then bMon="Diamond"Qname="Area1Quest"Qdata=3;PosQBoss=CFrame.new(-427.5666809082,73.313781738281,1835.4208984375)PosB=CFrame.new(-1576.7166748047,198.59265136719,13.724286079407)elseif _G.FindBoss=="Jeremy"then bMon="Jeremy"Qname="Area2Quest"Qdata=3;PosQBoss=CFrame.new(636.79943847656,73.413787841797,918.00415039063)PosB=CFrame.new(2006.9261474609,448.95666503906,853.98284912109)elseif _G.FindBoss=="Fajita"then bMon="Fajita"Qname="MarineQuest3"Qdata=3;PosQBoss=CFrame.new(-2441.986328125,73.359344482422,-3217.5324707031)PosB=CFrame.new(-2172.7399902344,103.32216644287,-4015.025390625)elseif _G.FindBoss=="Don Swan"then bMon="Don Swan"PosB=CFrame.new(2286.2004394531,15.177839279175,863.8388671875)elseif _G.FindBoss=="Smoke Admiral"then bMon="Smoke Admiral"Qname="IceSideQuest"Qdata=3;PosQBoss=CFrame.new(-5429.0473632813,15.977565765381,-5297.9614257813)PosB=CFrame.new(-5275.1987304688,20.757257461548,-5260.6669921875)elseif _G.FindBoss=="Awakened Ice Admiral"then bMon="Awakened Ice Admiral"Qname="FrostQuest"Qdata=3;PosQBoss=CFrame.new(5668.9780273438,28.519989013672,-6483.3520507813)PosB=CFrame.new(6403.5439453125,340.29766845703,-6894.5595703125)elseif _G.FindBoss=="Tide Keeper"then bMon="Tide Keeper"Qname="ForgottenQuest"Qdata=3;PosQBoss=CFrame.new(-3053.9814453125,237.18954467773,-10145.0390625)PosB=CFrame.new(-3795.6423339844,105.88877105713,-11421.307617188)elseif _G.FindBoss=="Darkbeard"then bMon="Darkbeard"Qdata=nil;PosQBoss=CFrame.new(3677.08203125,62.751937866211,-3144.8332519531)PosB=CFrame.new(3677.08203125,62.751937866211,-3144.8332519531)elseif _G.FindBoss=="Cursed Captaim"then bMon="Cursed Captain"Qdata=nil;PosQBoss=CFrame.new(916.928589,181.092773,33422)PosB=CFrame.new(916.928589,181.092773,33422)elseif _G.FindBoss=="Order"then bMon="Order"Qdata=nil;PosQBoss=CFrame.new(-6217.2021484375,28.047645568848,-5053.1357421875)PosB=CFrame.new(-6217.2021484375,28.047645568848,-5053.1357421875)end end;if World3 then if _G.FindBoss=="Stone"then bMon="Stone"Qname="PiratePortQuest"Qdata=3;PosQBoss=CFrame.new(-289.76705932617,43.819011688232,5579.9384765625)PosB=CFrame.new(-1027.6512451172,92.404174804688,6578.8530273438)elseif _G.FindBoss=="Hydra Leader"then bMon="Hydra Leader"Qname="AmazonQuest2"Qdata=3;PosQBoss=CFrame.new(5821.89794921875,1019.0950927734375,-73.71923065185547)PosB=CFrame.new(5821.89794921875,1019.0950927734375,-73.71923065185547)elseif _G.FindBoss=="Kilo Admiral"then bMon="Kilo Admiral"Qname="MarineTreeIsland"Qdata=3;PosQBoss=CFrame.new(2179.3010253906,28.731239318848,-6739.9741210938)PosB=CFrame.new(2764.2233886719,432.46154785156,-7144.4580078125)elseif _G.FindBoss=="Captain Elephant"then bMon="Captain Elephant"Qname="DeepForestIsland"Qdata=3;PosQBoss=CFrame.new(-13232.682617188,332.40396118164,-7626.01171875)PosB=CFrame.new(-13376.7578125,433.28689575195,-8071.392578125)elseif _G.FindBoss=="Beautiful Pirate"then bMon="Beautiful Pirate"Qname="DeepForestIsland2"Qdata=3;PosQBoss=CFrame.new(-12682.096679688,390.88653564453,-9902.1240234375)PosB=CFrame.new(5283.609375,22.56223487854,-110.78285217285)elseif _G.FindBoss=="Cake Queen"then bMon="Cake Queen"Qname="IceCreamIslandQuest"Qdata=3;PosQBoss=CFrame.new(-819.376709,64.9259796,-10967.2832,-0.766061664,0,0.642767608,0,1,0,-0.642767608,0,-0.766061664)PosB=CFrame.new(-678.648804,381.353943,-11114.2012,-0.908641815,0.00149294338,0.41757378,0.00837114919,0.999857843,0.0146408929,-0.417492568,0.0167988986,-0.90852499)elseif _G.FindBoss=="Longma"then bMon="Longma"Qdata=nil;PosQBoss=CFrame.new(-10238.875976563,389.7912902832,-9549.7939453125)PosB=CFrame.new(-10238.875976563,389.7912902832,-9549.7939453125)elseif _G.FindBoss=="Soul Reaper"then bMon="Soul Reaper"Qdata=nil;PosQBoss=CFrame.new(-9524.7890625,315.80429077148,6655.7192382813)PosB=CFrame.new(-9524.7890625,315.80429077148,6655.7192382813)end end end
QuestBeta = function()
  local Neta = QuestB()
  return {
    [0] = _G.FindBoss,
    [1] = bMon,
    [2] = Qdata,
    [3] = Qname,
    [4] = PosB
    }  
end
QuestCheck=function()local a=game.Players.LocalPlayer.Data.Level.Value;if World1 then if a==1 or a<=9 then if tostring(TeamSelf)=="Marines"then Mon="Trainee"Qname="MarineQuest"Qdata=1;NameMon="Trainee"PosM=CFrame.new(-2709.67944,24.5206585,2104.24585,-0.744724929,-3.97967455e-08,-0.667371571,4.32403588e-08,1,-1.07884304e-07,0.667371571,-1.09201515e-07,-0.744724929)PosQ=CFrame.new(-2709.67944,24.5206585,2104.24585,-0.744724929,-3.97967455e-08,-0.667371571,4.32403588e-08,1,-1.07884304e-07,0.667371571,-1.09201515e-07,-0.744724929)elseif tostring(TeamSelf)=="Pirates"then Mon="Bandit"Qdata=1;Qname="BanditQuest1"NameMon="Bandit"PosM=CFrame.new(1045.962646484375,27.00250816345215,1560.8203125)PosQ=CFrame.new(1045.962646484375,27.00250816345215,1560.8203125)end elseif a==10 or a<=14 then Mon="Monkey"Qdata=1;Qname="JungleQuest"NameMon="Monkey"PosQ=CFrame.new(-1598.08911,35.5501175,153.377838,0,0,1,0,1,-0,-1,0,0)PosM=CFrame.new(-1448.51806640625,67.85301208496094,11.46579647064209)elseif a==15 or a<=29 then Mon="Gorilla"Qdata=2;Qname="JungleQuest"NameMon="Gorilla"PosQ=CFrame.new(-1598.08911,35.5501175,153.377838,0,0,1,0,1,-0,-1,0,0)PosM=CFrame.new(-1129.8836669921875,40.46354675292969,-525.4237060546875)elseif a==30 or a<=39 then Mon="Pirate"Qdata=1;Qname="BuggyQuest1"NameMon="Pirate"PosQ=CFrame.new(-1141.07483,4.10001802,3831.5498,0.965929627,-0,-0.258804798,0,1,-0,0.258804798,0,0.965929627)PosM=CFrame.new(-1103.513427734375,13.752052307128906,3896.091064453125)elseif a==40 or a<=59 then Mon="Brute"Qdata=2;Qname="BuggyQuest1"NameMon="Brute"PosQ=CFrame.new(-1141.07483,4.10001802,3831.5498,0.965929627,-0,-0.258804798,0,1,-0,0.258804798,0,0.965929627)PosM=CFrame.new(-1140.083740234375,14.809885025024414,4322.92138671875)elseif a==60 or a<=74 then Mon="Desert Bandit"Qdata=1;Qname="DesertQuest"NameMon="Desert Bandit"PosQ=CFrame.new(894.488647,5.14000702,4392.43359,0.819155693,-0,-0.573571265,0,1,-0,0.573571265,0,0.819155693)PosM=CFrame.new(924.7998046875,6.44867467880249,4481.5859375)elseif a==75 or a<=89 then Mon="Desert Officer"Qdata=2;Qname="DesertQuest"NameMon="Desert Officer"PosQ=CFrame.new(894.488647,5.14000702,4392.43359,0.819155693,-0,-0.573571265,0,1,-0,0.573571265,0,0.819155693)PosM=CFrame.new(1608.2822265625,8.614224433898926,4371.00732421875)elseif a==90 or a<=99 then Mon="Snow Bandit"Qdata=1;Qname="SnowQuest"NameMon="Snow Bandit"PosQ=CFrame.new(1389.74451,88.1519318,-1298.90796,-0.342042685,0,0.939684391,0,1,0,-0.939684391,0,-0.342042685)PosM=CFrame.new(1354.347900390625,87.27277374267578,-1393.946533203125)elseif a==100 or a<=119 then Mon="Snowman"Qdata=2;Qname="SnowQuest"NameMon="Snowman"PosQ=CFrame.new(1389.74451,88.1519318,-1298.90796,-0.342042685,0,0.939684391,0,1,0,-0.939684391,0,-0.342042685)PosM=CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)elseif a==120 or a<=149 then Mon="Chief Petty Officer"Qdata=1;Qname="MarineQuest2"NameMon="Chief Petty Officer"PosQ=CFrame.new(-5039.58643,27.3500385,4324.68018,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-4881.23095703125,22.65204429626465,4273.75244140625)elseif a==150 or a<=174 then Mon="Sky Bandit"Qdata=1;Qname="SkyQuest"NameMon="Sky Bandit"PosQ=CFrame.new(-4839.53027,716.368591,-2619.44165,0.866007268,0,0.500031412,0,1,0,-0.500031412,0,0.866007268)PosM=CFrame.new(-4953.20703125,295.74420166015625,-2899.22900390625)elseif a==175 or a<=189 then Mon="Dark Master"Qdata=2;Qname="SkyQuest"NameMon="Dark Master"PosQ=CFrame.new(-4839.53027,716.368591,-2619.44165,0.866007268,0,0.500031412,0,1,0,-0.500031412,0,0.866007268)PosM=CFrame.new(-5259.8447265625,391.3976745605469,-2229.035400390625)elseif a==190 or a<=209 then Mon="Prisoner"Qdata=1;Qname="PrisonerQuest"NameMon="Prisoner"PosQ=CFrame.new(5308.93115,1.65517521,475.120514,-0.0894274712,-5.00292918e-09,-0.995993316,1.60817859e-09,1,-5.16744869e-09,0.995993316,-2.06384709e-09,-0.0894274712)PosM=CFrame.new(5098.9736328125,-0.3204058110713959,474.2373352050781)elseif a==210 or a<=249 then Mon="Dangerous Prisoner"Qdata=2;Qname="PrisonerQuest"NameMon="Dangerous Prisoner"PosQ=CFrame.new(5308.93115,1.65517521,475.120514,-0.0894274712,-5.00292918e-09,-0.995993316,1.60817859e-09,1,-5.16744869e-09,0.995993316,-2.06384709e-09,-0.0894274712)PosM=CFrame.new(5654.5634765625,15.633401870727539,866.2991943359375)elseif a==250 or a<=274 then Mon="Toga Warrior"Qdata=1;Qname="ColosseumQuest"NameMon="Toga Warrior"PosQ=CFrame.new(-1580.04663,6.35000277,-2986.47534,-0.515037298,0,-0.857167721,0,1,0,0.857167721,0,-0.515037298)PosM=CFrame.new(-1820.21484375,51.68385696411133,-2740.6650390625)elseif a==275 or a<=299 then Mon="Gladiator"Qdata=2;Qname="ColosseumQuest"NameMon="Gladiator"PosQ=CFrame.new(-1580.04663,6.35000277,-2986.47534,-0.515037298,0,-0.857167721,0,1,0,0.857167721,0,-0.515037298)PosM=CFrame.new(-1292.838134765625,56.380882263183594,-3339.031494140625)elseif a==300 or a<=324 then Boubty=false;Mon="Military Soldier"Qdata=1;Qname="MagmaQuest"NameMon="Military Soldier"PosQ=CFrame.new(-5313.37012,10.9500084,8515.29395,-0.499959469,0,0.866048813,0,1,0,-0.866048813,0,-0.499959469)PosM=CFrame.new(-5411.16455078125,11.081554412841797,8454.29296875)elseif a==325 or a<=374 then Mon="Military Spy"Qdata=2;Qname="MagmaQuest"NameMon="Military Spy"PosQ=CFrame.new(-5313.37012,10.9500084,8515.29395,-0.499959469,0,0.866048813,0,1,0,-0.866048813,0,-0.499959469)PosM=CFrame.new(-5802.8681640625,86.26241302490234,8828.859375)elseif a==375 or a<=399 then Mon="Fishman Warrior"Qdata=1;Qname="FishmanQuest"NameMon="Fishman Warrior"PosQ=CFrame.new(61122.65234375,18.497442245483,1569.3997802734)PosM=CFrame.new(60878.30078125,18.482830047607422,1543.7574462890625)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>10000 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875))end elseif a==400 or a<=449 then Mon="Fishman Commando"Qdata=2;Qname="FishmanQuest"NameMon="Fishman Commando"PosQ=CFrame.new(61122.65234375,18.497442245483,1569.3997802734)PosM=CFrame.new(61922.6328125,18.482830047607422,1493.934326171875)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>10000 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875))end elseif a==450 or a<=474 then Mon="God's Guard"Qdata=1;Qname="SkyExp1Quest"NameMon="God's Guard"PosQ=CFrame.new(-4721.88867,843.874695,-1949.96643,0.996191859,-0,-0.0871884301,0,1,-0,0.0871884301,0,0.996191859)PosM=CFrame.new(-4710.04296875,845.2769775390625,-1927.3079833984375)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>10000 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275,872.54248,-1667.55688))end elseif a==475 or a<=524 then Mon="Shanda"Qdata=2;Qname="SkyExp1Quest"NameMon="Shanda"PosQ=CFrame.new(-7859.09814,5544.19043,-381.476196,-0.422592998,0,0.906319618,0,1,0,-0.906319618,0,-0.422592998)PosM=CFrame.new(-7678.48974609375,5566.40380859375,-497.2156066894531)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>10000 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813,5547.1416015625,-380.29119873047))end elseif a==525 or a<=549 then Mon="Royal Squad"Qdata=1;Qname="SkyExp2Quest"NameMon="Royal Squad"PosQ=CFrame.new(-7906.81592,5634.6626,-1411.99194,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-7624.25244140625,5658.13330078125,-1467.354248046875)elseif a==550 or a<=624 then Mon="Royal Soldier"Qdata=2;Qname="SkyExp2Quest"NameMon="Royal Soldier"PosQ=CFrame.new(-7906.81592,5634.6626,-1411.99194,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-7836.75341796875,5645.6640625,-1790.6236572265625)elseif a==625 or a<=649 then Mon="Galley Pirate"Qdata=1;Qname="FountainQuest"NameMon="Galley Pirate"PosQ=CFrame.new(5259.81982,37.3500175,4050.0293,0.087131381,0,0.996196866,0,1,0,-0.996196866,0,0.087131381)PosM=CFrame.new(5551.02197265625,78.90135192871094,3930.412841796875)elseif a>=650 then Mon="Galley Captain"Qdata=2;Qname="FountainQuest"NameMon="Galley Captain"PosQ=CFrame.new(5259.81982,37.3500175,4050.0293,0.087131381,0,0.996196866,0,1,0,-0.996196866,0,0.087131381)PosM=CFrame.new(5441.95166015625,42.50205993652344,4950.09375)end elseif World2 then if a==700 or a<=724 then Mon="Raider"Qdata=1;Qname="Area1Quest"NameMon="Raider"PosQ=CFrame.new(-429.543518,71.7699966,1836.18188,-0.22495985,0,-0.974368095,0,1,0,0.974368095,0,-0.22495985)PosM=CFrame.new(-728.3267211914062,52.779319763183594,2345.7705078125)elseif a==725 or a<=774 then Mon="Mercenary"Qdata=2;Qname="Area1Quest"NameMon="Mercenary"PosQ=CFrame.new(-429.543518,71.7699966,1836.18188,-0.22495985,0,-0.974368095,0,1,0,0.974368095,0,-0.22495985)PosM=CFrame.new(-1004.3244018554688,80.15886688232422,1424.619384765625)elseif a==775 or a<=799 then Mon="Swan Pirate"Qdata=1;Qname="Area2Quest"NameMon="Swan Pirate"PosQ=CFrame.new(638.43811,71.769989,918.282898,0.139203906,0,0.99026376,0,1,0,-0.99026376,0,0.139203906)PosM=CFrame.new(1068.664306640625,137.61428833007812,1322.1060791015625)elseif a==800 or a<=874 then Mon="Factory Staff"Qname="Area2Quest"Qdata=2;NameMon="Factory Staff"PosQ=CFrame.new(632.698608,73.1055908,918.666321,-0.0319722369,8.96074881e-10,-0.999488771,1.36326533e-10,1,8.92172336e-10,0.999488771,-1.07732087e-10,-0.0319722369)PosM=CFrame.new(73.07867431640625,81.86344146728516,-27.470672607421875)elseif a==875 or a<=899 then Mon="Marine Lieutenant"Qdata=1;Qname="MarineQuest3"NameMon="Marine Lieutenant"PosQ=CFrame.new(-2440.79639,71.7140732,-3216.06812,0.866007268,0,0.500031412,0,1,0,-0.500031412,0,0.866007268)PosM=CFrame.new(-2821.372314453125,75.89727783203125,-3070.089111328125)elseif a==900 or a<=949 then Mon="Marine Captain"Qdata=2;Qname="MarineQuest3"NameMon="Marine Captain"PosQ=CFrame.new(-2440.79639,71.7140732,-3216.06812,0.866007268,0,0.500031412,0,1,0,-0.500031412,0,0.866007268)PosM=CFrame.new(-1861.2310791015625,80.17658233642578,-3254.697509765625)elseif a==950 or a<=974 then Mon="Zombie"Qdata=1;Qname="ZombieQuest"NameMon="Zombie"PosQ=CFrame.new(-5497.06152,47.5923004,-795.237061,-0.29242146,0,-0.95628953,0,1,0,0.95628953,0,-0.29242146)PosM=CFrame.new(-5657.77685546875,78.96973419189453,-928.68701171875)elseif a==975 or a<=999 then Mon="Vampire"Qdata=2;Qname="ZombieQuest"NameMon="Vampire"PosQ=CFrame.new(-5497.06152,47.5923004,-795.237061,-0.29242146,0,-0.95628953,0,1,0,0.95628953,0,-0.29242146)PosM=CFrame.new(-6037.66796875,32.18463897705078,-1340.6597900390625)elseif a==1000 or a<=1049 then Mon="Snow Trooper"Qdata=1;Qname="SnowMountainQuest"NameMon="Snow Trooper"PosQ=CFrame.new(609.858826,400.119904,-5372.25928,-0.374604106,0,0.92718488,0,1,0,-0.92718488,0,-0.374604106)PosM=CFrame.new(549.1473388671875,427.3870544433594,-5563.69873046875)elseif a==1050 or a<=1099 then Mon="Winter Warrior"Qdata=2;Qname="SnowMountainQuest"NameMon="Winter Warrior"PosQ=CFrame.new(609.858826,400.119904,-5372.25928,-0.374604106,0,0.92718488,0,1,0,-0.92718488,0,-0.374604106)PosM=CFrame.new(1142.7451171875,475.6398010253906,-5199.41650390625)elseif a==1100 or a<=1124 then Mon="Lab Subordinate"Qdata=1;Qname="IceSideQuest"NameMon="Lab Subordinate"PosQ=CFrame.new(-6064.06885,15.2422857,-4902.97852,0.453972578,-0,-0.891015649,0,1,-0,0.891015649,0,0.453972578)PosM=CFrame.new(-5707.4716796875,15.951709747314453,-4513.39208984375)elseif a==1125 or a<=1174 then Mon="Horned Warrior"Qdata=2;Qname="IceSideQuest"NameMon="Horned Warrior"PosQ=CFrame.new(-6064.06885,15.2422857,-4902.97852,0.453972578,-0,-0.891015649,0,1,-0,0.891015649,0,0.453972578)PosM=CFrame.new(-6341.36669921875,15.951770782470703,-5723.162109375)elseif a==1175 or a<=1199 then Mon="Magma Ninja"Qdata=1;Qname="FireSideQuest"NameMon="Magma Ninja"PosQ=CFrame.new(-5428.03174,15.0622921,-5299.43457,-0.882952213,0,0.469463557,0,1,0,-0.469463557,0,-0.882952213)PosM=CFrame.new(-5449.6728515625,76.65874481201172,-5808.20068359375)elseif a==1200 or a<=1249 then Mon="Lava Pirate"Qdata=2;Qname="FireSideQuest"NameMon="Lava Pirate"PosQ=CFrame.new(-5428.03174,15.0622921,-5299.43457,-0.882952213,0,0.469463557,0,1,0,-0.469463557,0,-0.882952213)PosM=CFrame.new(-5213.33154296875,49.73788070678711,-4701.451171875)elseif a==1250 or a<=1274 then Mon="Ship Deckhand"Qdata=1;Qname="ShipQuest1"NameMon="Ship Deckhand"PosQ=CFrame.new(1037.80127,125.092171,32911.6016)PosM=CFrame.new(1212.0111083984375,150.79205322265625,33059.24609375)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>500 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406,126.9760055542,32852.83203125))end elseif a==1275 or a<=1299 then Mon="Ship Engineer"Qdata=2;Qname="ShipQuest1"NameMon="Ship Engineer"PosQ=CFrame.new(1037.80127,125.092171,32911.6016)PosM=CFrame.new(919.4786376953125,43.54401397705078,32779.96875)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>500 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406,126.9760055542,32852.83203125))end elseif a==1300 or a<=1324 then Mon="Ship Steward"Qdata=1;Qname="ShipQuest2"NameMon="Ship Steward"PosQ=CFrame.new(968.80957,125.092171,33244.125)PosM=CFrame.new(919.4385375976562,129.55599975585938,33436.03515625)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>500 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406,126.9760055542,32852.83203125))end elseif a==1325 or a<=1349 then Mon="Ship Officer"Qdata=2;Qname="ShipQuest2"NameMon="Ship Officer"PosQ=CFrame.new(968.80957,125.092171,33244.125)PosM=CFrame.new(1036.0179443359375,181.4390411376953,33315.7265625)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>500 then replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406,126.9760055542,32852.83203125))end elseif a==1350 or a<=1374 then Mon="Arctic Warrior"Qdata=1;Qname="FrostQuest"NameMon="Arctic Warrior"PosQ=CFrame.new(5667.6582,26.7997818,-6486.08984,-0.933587909,0,-0.358349502,0,1,0,0.358349502,0,-0.933587909)PosM=CFrame.new(5966.24609375,62.97002029418945,-6179.3828125)if _G.Level and (PosQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>1000 then BTP(PosM) end elseif a==1375 or a<=1424 then Mon="Snow Lurker"Qdata=2;Qname="FrostQuest"NameMon="Snow Lurker"PosQ=CFrame.new(5667.6582,26.7997818,-6486.08984,-0.933587909,0,-0.358349502,0,1,0,0.358349502,0,-0.933587909)PosM=CFrame.new(5407.07373046875,69.19437408447266,-6880.88037109375)elseif a==1425 or a<=1449 then Mon="Sea Soldier"Qdata=1;Qname="ForgottenQuest"NameMon="Sea Soldier"PosQ=CFrame.new(-3054.44458,235.544281,-10142.8193,0.990270376,-0,-0.13915664,0,1,-0,0.13915664,0,0.990270376)PosM=CFrame.new(-3028.2236328125,64.67451477050781,-9775.4267578125)elseif a>=1450 then Mon="Water Fighter"Qdata=2;Qname="ForgottenQuest"NameMon="Water Fighter"PosQ=CFrame.new(-3054.44458,235.544281,-10142.8193,0.990270376,-0,-0.13915664,0,1,-0,0.13915664,0,0.990270376)PosM=CFrame.new(-3352.9013671875,285.01556396484375,-10534.841796875)end elseif World3 then if a==1500 or a<=1524 then Mon="Pirate Millionaire"Qdata=1;Qname="PiratePortQuest"NameMon="Pirate Millionaire"PosQ=CFrame.new(-712.8272705078125,98.5770492553711,5711.9541015625)PosM=CFrame.new(-712.8272705078125,98.5770492553711,5711.9541015625)elseif a==1525 or a<=1574 then Mon="Pistol Billionaire"Qdata=2;Qname="PiratePortQuest"NameMon="Pistol Billionaire"PosQ=CFrame.new(-723.4331665039062,147.42906188964844,5931.9931640625)PosM=CFrame.new(-723.4331665039062,147.42906188964844,5931.9931640625)elseif a==1575 or a<=1599 then Mon="Dragon Crew Warrior"Qdata=1;Qname="AmazonQuest"NameMon="Dragon Crew Warrior"PosQ=CFrame.new(6779.03271484375,111.16865539550781,-801.2130737304688)PosM=CFrame.new(6779.03271484375,111.16865539550781,-801.2130737304688)elseif a==1600 or a<=1624 then Mon="Dragon Crew Archer"Qname="AmazonQuest"Qdata=2;NameMon="Dragon Crew Archer"PosQ=CFrame.new(6955.8974609375,546.6658935546875,309.0401306152344)PosM=CFrame.new(6955.8974609375,546.6658935546875,309.0401306152344)elseif a==1625 or a<=1649 then Mon="Hydra Enforcer"Qname="VenomCrewQuest"Qdata=1;NameMon="Hydra Enforcer"PosQ=CFrame.new(4620.61572265625,1002.2954711914062,399.0868835449219)PosM=CFrame.new(4620.61572265625,1002.2954711914062,399.0868835449219)elseif a==1650 or a<=1699 then Mon="Venomous Assailant"Qname="VenomCrewQuest"Qdata=2;NameMon="Venomous Assailant"PosQ=CFrame.new(4697.5918,1100.65137,946.401978,0.579397917,-4.19689783e-10,0.81504482,-1.49287818e-10,1,6.21053986e-10,-0.81504482,-4.81513662e-10,0.579397917)PosM=CFrame.new(4697.5918,1100.65137,946.401978,0.579397917,-4.19689783e-10,0.81504482,-1.49287818e-10,1,6.21053986e-10,-0.81504482,-4.81513662e-10,0.579397917)elseif a==1700 or a<=1724 then Mon="Marine Commodore"Qdata=1;Qname="MarineTreeIsland"NameMon="Marine Commodore"PosQ=CFrame.new(2180.54126,27.8156815,-6741.5498,-0.965929747,0,0.258804798,0,1,0,-0.258804798,0,-0.965929747)PosM=CFrame.new(2286.0078125,73.13391876220703,-7159.80908203125)elseif a==1725 or a<=1774 then Mon="Marine Rear Admiral"NameMon="Marine Rear Admiral"Qname="MarineTreeIsland"Qdata=2;PosQ=CFrame.new(2179.98828125,28.731239318848,-6740.0551757813)PosM=CFrame.new(3656.773681640625,160.52406311035156,-7001.5986328125)elseif a==1775 or a<=1799 then Mon="Fishman Raider"Qdata=1;Qname="DeepForestIsland3"NameMon="Fishman Raider"PosQ=CFrame.new(-10581.6563,330.872955,-8761.18652,-0.882952213,0,0.469463557,0,1,0,-0.469463557,0,-0.882952213)PosM=CFrame.new(-10407.5263671875,331.76263427734375,-8368.5166015625)elseif a==1800 or a<=1824 then Mon="Fishman Captain"Qdata=2;Qname="DeepForestIsland3"NameMon="Fishman Captain"PosQ=CFrame.new(-10581.6563,330.872955,-8761.18652,-0.882952213,0,0.469463557,0,1,0,-0.469463557,0,-0.882952213)PosM=CFrame.new(-10994.701171875,352.38140869140625,-9002.1103515625)elseif a==1825 or a<=1849 then Mon="Forest Pirate"Qdata=1;Qname="DeepForestIsland"NameMon="Forest Pirate"PosQ=CFrame.new(-13234.04,331.488495,-7625.40137,0.707134247,-0,-0.707079291,0,1,-0,0.707079291,0,0.707134247)PosM=CFrame.new(-13274.478515625,332.3781433105469,-7769.58056640625)elseif a==1850 or a<=1899 then Mon="Mythological Pirate"Qdata=2;Qname="DeepForestIsland"NameMon="Mythological Pirate"PosQ=CFrame.new(-13234.04,331.488495,-7625.40137,0.707134247,-0,-0.707079291,0,1,-0,0.707079291,0,0.707134247)PosM=CFrame.new(-13680.607421875,501.08154296875,-6991.189453125)elseif a==1900 or a<=1924 then Mon="Jungle Pirate"Qdata=1;Qname="DeepForestIsland2"NameMon="Jungle Pirate"PosQ=CFrame.new(-12680.3818,389.971039,-9902.01953,-0.0871315002,0,0.996196866,0,1,0,-0.996196866,0,-0.0871315002)PosM=CFrame.new(-12256.16015625,331.73828125,-10485.8369140625)elseif a==1925 or a<=1974 then Mon="Musketeer Pirate"Qdata=2;Qname="DeepForestIsland2"NameMon="Musketeer Pirate"PosQ=CFrame.new(-12680.3818,389.971039,-9902.01953,-0.0871315002,0,0.996196866,0,1,0,-0.996196866,0,-0.0871315002)PosM=CFrame.new(-13457.904296875,391.545654296875,-9859.177734375)elseif a==1975 or a<=1999 then Mon="Reborn Skeleton"Qdata=1;Qname="HauntedQuest1"NameMon="Reborn Skeleton"PosQ=CFrame.new(-9479.2168,141.215088,5566.09277,0,0,1,0,1,-0,-1,0,0)PosM=CFrame.new(-8763.7236328125,165.72299194335938,6159.86181640625)elseif a==2000 or a<=2024 then Mon="Living Zombie"Qdata=2;Qname="HauntedQuest1"NameMon="Living Zombie"PosQ=CFrame.new(-9479.2168,141.215088,5566.09277,0,0,1,0,1,-0,-1,0,0)PosM=CFrame.new(-10144.1318359375,138.62667846679688,5838.0888671875)elseif a==2025 or a<=2049 then Mon="Demonic Soul"Qdata=1;Qname="HauntedQuest2"NameMon="Demonic Soul"PosQ=CFrame.new(-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-9505.8720703125,172.10482788085938,6158.9931640625)elseif a==2050 or a<=2074 then Mon="Posessed Mummy"Qdata=2;Qname="HauntedQuest2"NameMon="Posessed Mummy"PosQ=CFrame.new(-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-9582.0224609375,6.251527309417725,6205.478515625)elseif a==2075 or a<=2099 then Mon="Peanut Scout"Qdata=1;Qname="NutsIslandQuest"NameMon="Peanut Scout"PosQ=CFrame.new(-2104.3908691406,38.104167938232,-10194.21875,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-2143.241943359375,47.72198486328125,-10029.9951171875)elseif a==2100 or a<=2124 then Mon="Peanut President"Qdata=2;Qname="NutsIslandQuest"NameMon="Peanut President"PosQ=CFrame.new(-2104.3908691406,38.104167938232,-10194.21875,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-1859.35400390625,38.10316848754883,-10422.4296875)elseif a==2125 or a<=2149 then Mon="Ice Cream Chef"Qdata=1;Qname="IceCreamIslandQuest"NameMon="Ice Cream Chef"PosQ=CFrame.new(-820.64825439453,65.819526672363,-10965.795898438,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-872.24658203125,65.81957244873047,-10919.95703125)elseif a==2150 or a<=2199 then Mon="Ice Cream Commander"Qdata=2;Qname="IceCreamIslandQuest"NameMon="Ice Cream Commander"PosQ=CFrame.new(-820.64825439453,65.819526672363,-10965.795898438,0,0,-1,0,1,0,1,0,0)PosM=CFrame.new(-558.06103515625,112.04895782470703,-11290.7744140625)elseif a==2200 or a<=2224 then Mon="Cookie Crafter"Qdata=1;Qname="CakeQuest1"NameMon="Cookie Crafter"PosQ=CFrame.new(-2021.32007,37.7982254,-12028.7295,0.957576931,-8.80302053e-08,0.288177818,6.9301187e-08,1,7.51931211e-08,-0.288177818,-5.2032135e-08,0.957576931)PosM=CFrame.new(-2374.13671875,37.79826354980469,-12125.30859375)elseif a==2225 or a<=2249 then Mon="Cake Guard"Qdata=2;Qname="CakeQuest1"NameMon="Cake Guard"PosQ=CFrame.new(-2021.32007,37.7982254,-12028.7295,0.957576931,-8.80302053e-08,0.288177818,6.9301187e-08,1,7.51931211e-08,-0.288177818,-5.2032135e-08,0.957576931)PosM=CFrame.new(-1598.3070068359375,43.773197174072266,-12244.5810546875)elseif a==2250 or a<=2274 then Mon="Baking Staff"Qdata=1;Qname="CakeQuest2"NameMon="Baking Staff"PosQ=CFrame.new(-1927.91602,37.7981339,-12842.5391,-0.96804446,4.22142143e-08,0.250778586,4.74911062e-08,1,1.49904711e-08,-0.250778586,2.64211941e-08,-0.96804446)PosM=CFrame.new(-1887.8099365234375,77.6185073852539,-12998.3505859375)elseif a==2275 or a<=2299 then Mon="Head Baker"Qdata=2;Qname="CakeQuest2"NameMon="Head Baker"PosQ=CFrame.new(-1927.91602,37.7981339,-12842.5391,-0.96804446,4.22142143e-08,0.250778586,4.74911062e-08,1,1.49904711e-08,-0.250778586,2.64211941e-08,-0.96804446)PosM=CFrame.new(-2216.188232421875,82.884521484375,-12869.2939453125)elseif a==2300 or a<=2324 then Mon="Cocoa Warrior"Qdata=1;Qname="ChocQuest1"NameMon="Cocoa Warrior"PosQ=CFrame.new(233.22836303710938,29.876001358032227,-12201.2333984375)PosM=CFrame.new(-21.55328369140625,80.57499694824219,-12352.3876953125)elseif a==2325 or a<=2349 then Mon="Chocolate Bar Battler"Qdata=2;Qname="ChocQuest1"NameMon="Chocolate Bar Battler"PosQ=CFrame.new(233.22836303710938,29.876001358032227,-12201.2333984375)PosM=CFrame.new(582.590576171875,77.18809509277344,-12463.162109375)elseif a==2350 or a<=2374 then Mon="Sweet Thief"Qdata=1;Qname="ChocQuest2"NameMon="Sweet Thief"PosQ=CFrame.new(150.5066375732422,30.693693161010742,-12774.5029296875)PosM=CFrame.new(165.1884765625,76.05885314941406,-12600.8369140625)elseif a==2375 or a<=2399 then Mon="Candy Rebel"Qdata=2;Qname="ChocQuest2"NameMon="Candy Rebel"PosQ=CFrame.new(150.5066375732422,30.693693161010742,-12774.5029296875)PosM=CFrame.new(134.86563110351562,77.2476806640625,-12876.5478515625)elseif a==2400 or a<=2449 then Mon="Candy Pirate"Qdata=1;Qname="CandyQuest1"NameMon="Candy Pirate"PosQ=CFrame.new(-1150.0400390625,20.378934860229492,-14446.3349609375)PosM=CFrame.new(-1310.5003662109375,26.016523361206055,-14562.404296875)elseif a==2450 or a<=2474 then Mon="Isle Outlaw"Qdata=1;Qname="TikiQuest1"NameMon="Isle Outlaw"PosQ=CFrame.new(-16548.8164,55.6059914,-172.8125,0.213092566,-0,-0.977032006,0,1,-0,0.977032006,0,0.213092566)PosM=CFrame.new(-16479.900390625,226.6117401123047,-300.3114318847656)elseif a==2475 or a<=2499 then Mon="Island Boy"Qdata=2;Qname="TikiQuest1"NameMon="Island Boy"PosQ=CFrame.new(-16548.8164,55.6059914,-172.8125,0.213092566,-0,-0.977032006,0,1,-0,0.977032006,0,0.213092566)PosM=CFrame.new(-16849.396484375,192.86505126953125,-150.7853240966797)elseif a==2500 or a<=2524 then Mon="Sun-kissed Warrior"Qdata=1;Qname="TikiQuest2"NameMon="kissed Warrior"PosM=CFrame.new(-16347,64,984)PosQ=CFrame.new(-16538,55,1049)elseif a==2525 or a<=2550 then Mon="Isle Champion"Qdata=2;Qname="TikiQuest2"NameMon="Isle Champion"PosQ=CFrame.new(-16541.0215,57.3082275,1051.46118,0.0410757065,-0,-0.999156058,0,1,-0,0.999156058,0,0.0410757065)PosM=CFrame.new(-16602.1015625,130.38734436035156,1087.24560546875)
elseif a >= 2551 and a <= 2574 then
				Mon = "Serpent Hunter"
				Qdata = 1;
				Qname = "TikiQuest3";
				NameMon = "Serpent Hunter"
				PosQ = CFrame.new(-16679.4785, 176.7473, 1474.3995)
				PosM = CFrame.new(-16679.4785, 176.7473, 1474.3995)
			elseif a >= 2575 and a <= 2599 then 
				Mon = "Skull Slayer"
				Qdata = 2;
				Qname = "TikiQuest3";
				NameMon = "Skull Slayer"
				PosQ = CFrame.new(-16759.5898, 71.2837, 1595.3399)
				PosM = CFrame.new(-16759.5898, 71.2837, 1595.3399)

	
			elseif a >= 2600 and a <= 2624 then
				Mon = "Reef Bandit"
				Qdata = 1;
				Qname = "SubmergedQuest1";
				NameMon = "Reef Bandit"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226) 
				PosM = CFrame.new(10736.6191, -2087.8439, 9338.4882)
			elseif a >= 2625 and a <= 2649 then
				Mon = "Coral Pirate"
				Qdata = 2;
				Qname = "SubmergedQuest1";
				NameMon = "Coral Pirate"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(10965.1025, -2158.8842, 9177.2597)
			elseif a >= 2650 and a <= 2674 then
				Mon = "Sea Chanter"
				Qdata = 1;
				Qname = "SubmergedQuest2";
				NameMon = "Sea Chanter"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(10621.0342, -2087.8440, 10102.0332)
			elseif a >= 2675 and a <= 2699 then
				Mon = "Ocean Prophet"
				Qdata = 2;
				Qname = "SubmergedQuest2";
				NameMon = "Ocean Prophet"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(11056.1445, -2001.6717, 10117.4493)
			elseif a >= 2700 and a <= 2724 then
				Mon = "High Disciple"
				Qdata = 1;
				Qname = "SubmergedQuest3";
				NameMon = "High Disciple"
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
				PosM = CFrame.new(9828.087890625, -1940.908935546875, 9693.0634765625)
			elseif a >= 2725 and a <= 2800 then
				Mon = "Grand Devotee"
				Qdata = 2;
				Qname = "SubmergedQuest3";
				NameMon = "Grand Devotee"
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
				PosM = CFrame.new(9557.5849609375, -1928.0404052734375, 9859.1826171875)
end end end
MaterialMon=function()local a=game.Players.LocalPlayer;local b=a.Character and a.Character:FindFirstChild("HumanoidRootPart")if not b then return end;shouldRequestEntrance=function(c,d)local e=(b.Position-c).Magnitude;if e>=d then replicated.Remotes.CommF_:InvokeServer("requestEntrance",c)end end;if World1 then if SelectMaterial=="Angel Wings"then MMon={"Shanda","Royal Squad","Royal Soldier","Wysper","Thunder God"}MPos=CFrame.new(-4698,845,-1912)SP="Default"local c=Vector3.new(-4607.82275,872.54248,-1667.55688)shouldRequestEntrance(c,10000)elseif SelectMaterial=="Leather + Scrap Metal"then MMon={"Brute","Pirate"}MPos=CFrame.new(-1145,15,4350)SP="Default"elseif SelectMaterial=="Magma Ore"then MMon={"Military Soldier","Military Spy","Magma Admiral"}MPos=CFrame.new(-5815,84,8820)SP="Default"elseif SelectMaterial=="Fish Tail"then MMon={"Fishman Warrior","Fishman Commando","Fishman Lord"}MPos=CFrame.new(61123,19,1569)SP="Default"local c=Vector3.new(61163.8515625,5.342342376708984,1819.7841796875)shouldRequestEntrance(c,17000)end elseif World2 then if SelectMaterial=="Leather + Scrap Metal"then MMon={"Marine Captain"}MPos=CFrame.new(-2010.5059814453125,73.00115966796875,-3326.620849609375)SP="Default"elseif SelectMaterial=="Magma Ore"then MMon={"Magma Ninja","Lava Pirate"}MPos=CFrame.new(-5428,78,-5959)SP="Default"elseif SelectMaterial=="Ectoplasm"then MMon={"Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer"}MPos=CFrame.new(911.35827636719,125.95812988281,33159.5390625)SP="Default"local c=Vector3.new(61163.8515625,5.342342376708984,1819.7841796875)shouldRequestEntrance(c,18000)elseif SelectMaterial=="Mystic Droplet"then MMon={"Water Fighter"}MPos=CFrame.new(-3385,239,-10542)SP="Default"elseif SelectMaterial=="Radioactive Material"then MMon={"Factory Staff"}MPos=CFrame.new(295,73,-56)SP="Default"elseif SelectMaterial=="Vampire Fang"then MMon={"Vampire"}MPos=CFrame.new(-6033,7,-1317)SP="Default"end elseif World3 then if SelectMaterial=="Scrap Metal"then MMon={"Jungle Pirate","Forest Pirate"}MPos=CFrame.new(-11975.78515625,331.7734069824219,-10620.0302734375)SP="Default"elseif SelectMaterial=="Fish Tail"then MMon={"Fishman Raider","Fishman Captain"}MPos=CFrame.new(-10993,332,-8940)SP="Default"elseif SelectMaterial=="Conjured Cocoa"then MMon={"Chocolate Bar Battler","Cocoa Warrior"}MPos=CFrame.new(620.6344604492188,78.93644714355469,-12581.369140625)SP="Default"elseif SelectMaterial=="Dragon Scale"then MMon={"Dragon Crew Archer","Dragon Crew Warrior"}MPos=CFrame.new(6594,383,139)SP="Default"elseif SelectMaterial=="Gunpowder"then MMon={"Pistol Billionaire"}MPos=CFrame.new(-84.8556900024414, 85.62061309814453, 6132.0087890625)SP="Default"elseif SelectMaterial=="Mini Tusk"then MMon={"Mythological Pirate"}MPos=CFrame.new(-13545,470,-6917)SP="Default"elseif SelectMaterial=="Demonic Wisp"then MMon={"Demonic Soul"}MPos=CFrame.new(-9495.6806640625,453.58624267578125,5977.3486328125)SP="Default"end end end
QuestNeta = function()
  local Neta = QuestCheck()
  return {
    [1] = Mon,
    [2] = Qdata,
    [3] = Qname,
    [4] = PosM,
    [5] = NameMon,
    [6] = PosQ
  }
end

local Library = loadstring(game:HttpGet("https://luacrack.site/index.php/araujozwx/raw/SourceBananaUi"))()

local Window = Library:CreateWindow({
    Title = "🌚Eclipse Hub🌑",
    Desc = "Complete Blox Fruits",
    Image = "rbxassetid://105245380363493",
    Theme = {
        Accent = Color3.fromRGB(0, 255, 255)
    }
})

local Tab1 = Window:AddTab("Info / Discord", "rbxassetid://7733960981") 
local Section1 = Tab1:AddLeftGroupbox("Community")
Section1:AddLabel("🎮 Eclipse Hub - Blox Fruits")
Section1:AddLabel("⚡ Version: 3.0")
Section1:AddLabel("👑 Developed by: Eclipse Team")
Section1:AddSeperator("📱 Social")
Section1:AddButton({
    Title = "📌 Join Discord",
    Callback = function()
        setclipboard("https://discord.gg/59v9rx6p")
        Library:Notify({ Title = "Discord", Desc = "Link copied!", Duration = 3 })
    end
})
Section1:AddButton({
    Title = "📋 Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/59v9rx6p")
        Library:Notify({ Title = "Link Copied", Desc = "Paste in your browser", Duration = 3 })
    end
})
Section1:AddSeperator("📊 Information")
Section1:AddLabel("🌍 World: " .. (World1 and "World 1" or World2 and "World 2" or "World 3"))
Section1:AddLabel("📈 Level: " .. Lv)
Section1:AddLabel("💰 Beli: " .. plr.Data.Beli.Value)
Section1:AddLabel("💎 Fragments: " .. plr.Data.Fragments.Value)

local Tab2 = Window:AddTab("Settings", "rbxassetid://7733954611")
local Section2 = Tab2:AddLeftGroupbox("Combat Settings")
Section2:AddDropdown("SelectWeapon", {
    Title = "Select Weapon Type",
    Values = {"Melee","Sword","Blox Fruit","Gun"},
    Default = "Melee",
    Callback = function(Value)
        _G.ChooseWP = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.ChooseWP == "Melee" then
                for _,v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name              
                        end
                    end
                end
            elseif _G.ChooseWP == "Sword" then     
                for _,v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name              
                        end
                    end
                end
            elseif _G.ChooseWP == "Gun" then     
                for _,v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name              
                        end
                    end
                end
            elseif _G.ChooseWP == "Blox Fruit" then     
                for _,v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name		                    
                        end
                    end
                end        
            end
        end)
    end
end)
Section2:AddToggle("AutoAttack", {
    Title = "Auto Attack (M1)",
    Default = true,
    Callback = function(Value)
        _G.Seriality = Value
    end
})
Section2:AddToggle("BringMob", {
    Title = "Bring Mobs",
    Default = true,
    Callback = function(Value)
        _B = Value
    end
})
Section2:AddToggle("AutoBuso", {
    Title = "Auto Buso Haki",
    Default = true,
    Callback = function(Value)
        Boud = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if Boud then
                local _HasBuso = {"HasBuso","Buso"}
                if not plr.Character:FindFirstChild(_HasBuso[1]) then replicated.Remotes.CommF_:InvokeServer(_HasBuso[2]) end
            end
        end)
    end
end)
Section2:AddToggle("RandomCFrame", {
    Title = "Random CFrame",
    Default = false,
    Callback = function(Value)
        RandomCFrame = Value
    end
})
Section2:AddToggle("AntiAFK", {
    Title = "Anti AFK",
    Default = true,
    Callback = function(Value)
        _G.AntiAFK = Value
    end
})
plr.Idled:connect(function()
    vim2:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vim2:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
Section2:AddSeperator("Stats Allocation")
Section2:AddSlider({
    Title = "Stats Amount",
    Min = 1,
    Max = 100,
    Default = 10,
    Callback = function(Value)
        pSats = Value
    end
})
Section2:AddToggle("AutoMeleeStat", {
    Title = "Auto Melee",
    Default = false,
    Callback = function(Value)
        _G.Auto_Melee = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Melee then statsSetings("Melee",pSats) end
        end)
    end
end)
Section2:AddToggle("AutoDefenseStat", {
    Title = "Auto Defense",
    Default = false,
    Callback = function(Value)
        _G.Auto_Defense = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Defense then statsSetings("Defense",pSats) end
        end)
    end
end)
Section2:AddToggle("AutoSwordStat", {
    Title = "Auto Sword",
    Default = false,
    Callback = function(Value)
        _G.Auto_Sword = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Sword then statsSetings("Sword",pSats) end
        end)
    end
end)
Section2:AddToggle("AutoGunStat", {
    Title = "Auto Gun",
    Default = false,
    Callback = function(Value)
        _G.Auto_Gun = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Gun then statsSetings("Gun",pSats) end
        end)
    end
end)
Section2:AddToggle("AutoFruitStat", {
    Title = "Auto Blox Fruit",
    Default = false,
    Callback = function(Value)
        _G.Auto_DevilFruit = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_DevilFruit then statsSetings("Devil",pSats) end
        end)
    end
end)

local Tab3 = Window:AddTab("Main", "rbxassetid://7733920644")
local Section3 = Tab3:AddLeftGroupbox("Auto Farm")
Section3:AddToggle("FarmLevel", {
    Title = "Auto Farm Level",
    Default = false,
    Callback = function(Value)
        _G.Level = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.Level then
            pcall(function()
                local QuestTitle = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, QuestNeta()[5]) then replicated.Remotes.CommF_:InvokeServer("AbandonQuest") end
                if plr.PlayerGui.Main.Quest.Visible == false then
                    _tp(QuestNeta()[6])
                    if (Root.Position - QuestNeta()[6].Position).Magnitude <= 5 then replicated.Remotes.CommF_:InvokeServer("StartQuest", QuestNeta()[3], QuestNeta()[2]) end
                elseif plr.PlayerGui.Main.Quest.Visible == true then
                    if workspace.Enemies:FindFirstChild(QuestNeta()[1]) then
                        for i, v in pairs(workspace.Enemies:GetChildren()) do
                            if Attack.Alive(v) then
                                if v.Name == QuestNeta()[1] then
                                    if string.find(QuestTitle, QuestNeta()[5]) then
                                        repeat wait() Attack.Kill(v, _G.Level) until not _G.Level or v.Humanoid.Health <= 0 or not v.Parent or plr.PlayerGui.Main.Quest.Visible == false
                                    else
                                        replicated.Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else _tp(QuestNeta()[4])
                        if replicated:FindFirstChild(QuestNeta()[1]) then _tp(replicated:FindFirstChild(QuestNeta()[1]).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)) end
                    end
                end
            end)
        end
    end
end)
Section3:AddToggle("FarmNearest", {
    Title = "Auto Farm Nearest",
    Default = false,
    Callback = function(Value)
        _G.AutoFarmNear = Value
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmNear then
                for i,v in pairs(workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                        if v.Humanoid.Health > 0 then
                            repeat wait() Attack.Kill(v,_G.AutoFarmNear) until not _G.AutoFarmNear or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
Section3:AddToggle("FactoryRaid", {
    Title = "Auto Factory Raid",
    Default = false,
    Callback = function(Value)
        _G.AutoFactory = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoFactory then
                local v = GetConnectionEnemies("Core")
                if v then
                    repeat wait()
                        EquipWeapon(_G.SelectWeapon)
                        _tp(CFrame.new(448.46756, 199.356781, -441.389252))
                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                else
                    _tp(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end)
    end
end)
Section3:AddToggle("PirateRaid", {
    Title = "Auto Pirate Raid",
    Default = false,
    Callback = function(Value)
        _G.AutoRaidCastle = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoRaidCastle then
            pcall(function()
                local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - Root.Position).Magnitude <= 500 then
                    for i,v in pairs(workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name then
                                if (v.HumanoidRootPart.Position - Root.Position).Magnitude <= 2000 then
                                    repeat wait() Attack.Kill(v,_G.AutoRaidCastle) until not _G.AutoRaidCastle or not v.Parent or v.Humanoid.Health <= 0 or not workspace.Enemies:FindFirstChild(v.Name)
                                end
                            end
                        end
                    end
                else
                    local Castle_Mob = {"Galley Pirate","Galley Captain","Raider","Mercenary","Vampire","Zombie","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"}
                    for i = 1,#Castle_Mob do
                        if replicated:FindFirstChild(Castle_Mob[i]) then
                            for _,v in pairs(replicated:GetChildren()) do
                                if table.find(Castle_Mob, v.Name) then _tp(CFrameCastleRaid) end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Section3:AddSeperator("Boss Farm")
Section3:AddDropdown("SelectBoss", {
    Title = "Select Boss",
    Values = Boss,
    Default = Boss[1] or "No Boss",
    Callback = function(Value)
        _G.FindBoss = Value
    end
})
Section3:AddToggle("AutoBoss", {
    Title = "Auto Boss",
    Default = false,
    Callback = function(Value)
        _G.AutoBoss = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoBoss then
            pcall(function()
                local v = GetConnectionEnemies(_G.FindBoss)
                if v then
                    repeat wait() Attack.Kill(v,_G.AutoBoss) until not _G.AutoBoss or v.Humanoid.Health <= 0
                else
                    if QuestBeta()[4] then _tp(QuestBeta()[4]) end
                end
            end)
        end
    end
end)
Section3:AddSeperator("Material Farm")
Section3:AddDropdown("SelectMaterial", {
    Title = "Select Material",
    Values = MaterialList,
    Default = MaterialList[1] or "No Material",
    Callback = function(Value)
        getgenv().SelectMaterial = Value
    end
})
Section3:AddToggle("AutoMaterial", {
    Title = "Auto Material",
    Default = false,
    Callback = function(Value)
        getgenv().AutoMaterial = Value
    end
})
spawn(function()
    local function processEnemy(v, EnemyName)
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if v.Name == EnemyName then repeat wait() Attack.Kill(v,getgenv().AutoMaterial) until not getgenv().AutoMaterial or not v.Parent or v.Humanoid.Health <= 0 end
        end
    end
    local function handleEnemySpawns()
        for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
            for _, EnemyName in ipairs(MMon) do
                if string.find(v.Name, EnemyName) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                        _tp(v.CFrame * Pos)
                    end
                end
            end
        end
    end
    while wait() do
        if getgenv().AutoMaterial then
            pcall(function()
                if getgenv().SelectMaterial then MaterialMon(getgenv().SelectMaterial) _tp(MPos) end
                for _, EnemyName in ipairs(MMon) do
                    for _, v in pairs(workspace.Enemies:GetChildren()) do processEnemy(v, EnemyName) end
                end
                handleEnemySpawns()
            end)
        end
    end
end)

local Tab4 = Window:AddTab("Quests", "rbxassetid://7733954611")
local Section4 = Tab4:AddLeftGroupbox("Legendary Items")
Section4:AddToggle("AutoSaber", {
    Title = "Auto Saber Sword",
    Default = false,
    Callback = function(Value)
        _G.AutoSaber = Value
    end
})
spawn(function()
    while wait(.2) do
        pcall(function()
            if _G.AutoSaber and plr.Data.Level.Value >= 200 and not plr.Backpack:FindFirstChild("Saber") and not plr.Character:FindFirstChild("Saber") then
                if workspace.Map.Jungle.Final.Part.Transparency == 0 then
                    if workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            _tp(plr.Character.HumanoidRootPart.CFrame)
                            wait(0.5)
                            plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(0.5)
                            plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(0.5)
                            plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(0.5)
                            plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(0.5)
                            plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(0.5) 
                        else
                            _tp(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if workspace.Map.Desert.Burn.Part.Transparency == 0 then
                            if plr.Backpack:FindFirstChild("Torch") or plr.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                firetouchinterest(plr.Character.Torch.Handle,workspace.Map.Desert.Burn.Fire,0)
                                firetouchinterest(plr.Character.Torch.Handle,workspace.Map.Desert.Burn.Fire,1)
                                _tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                            else
                                _tp(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)) end
                        else
                            if replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",plr.Character.Cup)
                                wait(Sec)
                                replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
                            else
                                if replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if workspace.Enemies:FindFirstChild("Mob Leader") or replicated:FindFirstChild("Mob Leader") then
                                        _tp(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
                                        for i,v in pairs(workspace.Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" and Attack.Alive(v) then
                                                repeat task.wait() Attack.Kill(v, _G.AutoSaber) until v.Humanoid.Health <= 0 or _G.AutoSaber == false
                                            end
                                        end
                                    end
                                elseif replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    EquipWeapon("Relic")
                                    _tp(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if workspace.Enemies:FindFirstChild("Saber Expert") or replicated:FindFirstChild("Saber Expert") then
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v.Name == "Saber Expert" and Attack.Alive(v) then
                                repeat task.wait() Attack.Kill(v, _G.AutoSaber) until v.Humanoid.Health <= 0 or _G.AutoSaber == false
                                if v.Humanoid.Health <= 0 then replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic") end		      
                            end
                        end
                    else
                        _tp(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
                    end
                end
            end
        end)
    end
end)
Section4:AddToggle("AutoPole", {
    Title = "Auto Pole V1",
    Default = false,
    Callback = function(Value)
        _G.AutoPole = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoPole then
            pcall(function()
                local v = GetConnectionEnemies("Thunder God")
                if v then
                    repeat task.wait() Attack.Kill(v, _G.AutoPole) until not _G.AutoPole or not v.Parent or v.Humanoid.Health <= 0
                else
                    _tp(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
                end
            end)
        end
    end
end)
Section4:AddToggle("AutoPoleV2", {
    Title = "Auto Pole V2",
    Default = false,
    Callback = function(Value)
        _G.AutoPoleV2 = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoPoleV2 then        
                if not GetBP("Pole (1st Form)") then replicated.Remotes.CommF_:InvokeServer("LoadItem","Pole (1st Form)") end
                if not GetBP("Pole (2nd Form)") then replicated.Remotes.CommF_:InvokeServer("LoadItem","Pole (2nd Form)") end      
                if GetBP("Pole (1st Form)") and GetBP("Pole (1st Form)").Level.Value <= 179 then _G.Level = true elseif GetBP("Pole (1st Form)") and GetBP("Pole (1st Form)").Level.Value >= 180 then _G.Level = false end	   
                if not GetBP("Rumble Fruit") then return end
                if GetBP("Rumble Fruit").AwakenedMoves:FindFirstChild("Z") and GetBP("Rumble Fruit").AwakenedMoves:FindFirstChild("X") and GetBP("Rumble Fruit").AwakenedMoves:FindFirstChild("C") and GetBP("Rumble Fruit").AwakenedMoves:FindFirstChild("V") and GetBP("Rumble Fruit").AwakenedMoves:FindFirstChild("F") then
                    _G.SelectChip = nil
                    _G.Raiding = false
                    _G.Auto_Awakener = false
                    if plr.Data.Fragments.Value >= 5000 then
                        replicated.Remotes.CommF_:InvokeServer("Thunder God", "Talk") wait(Sec)
                        replicated.Remotes.CommF_:InvokeServer("Thunder God", "Sure")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Awakener","Check") == nil or replicated.Remotes.CommF_:InvokeServer("Awakener","Check") == 0 then
                    _G.SelectChip = "Rumble"
                    local Buying = replicated.Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
                    if Buying then Buying:Stop() end
                    _G.Raiding = true
                    _G.Auto_Awakener = true
                end	   
            end
        end)
    end
end)
Section4:AddToggle("AutoYama", {
    Title = "Auto Yama",
    Default = false,
    Callback = function(Value)
        _G.Auto_Yama = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Yama then
                if replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
                    _G.FarmEliteHunt = true
                elseif replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") > 30 then
                    _G.FarmEliteHunt = false
                    if (workspace.Map.Waterfall.SealedKatana.Handle.Position-plr.Character.HumanoidRootPart.Position).Magnitude >= 20 then
                        _tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                        local zx = GetConnectionEnemies("Ghost")
                        if zx then
                            repeat wait() Attack.Kill(zx,_G.Auto_Yama) until zx.Humanoid.Health <= 0 or not zx.Parent or not _G.Auto_Yama               
                            fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)
Section4:AddToggle("AutoTushita", {
    Title = "Auto Tushita",
    Default = false,
    Callback = function(Value)
        _G.Auto_Tushita = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Tushita then
                if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
                    if not GetBP("Holy Torch") then
                        _tp(CFrame.new(5148.03613, 162.352493, 910.548218))
                        wait(0.7)
                    else
                        EquipWeapon("Holy Torch")
                        task.wait(1)
                        repeat task.wait() _tp(CFrame.new(-10752, 417, -9366)) until not _G.Auto_Tushita or (CFrame.new(-10752, 417, -9366).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                        wait(.7)
                        repeat task.wait() _tp(CFrame.new(-11672, 334, -9474)) until not _G.Auto_Tushita or (CFrame.new(-11672, 334, -9474).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                        wait(.7)
                        repeat task.wait() _tp(CFrame.new(-12132, 521, -10655)) until not _G.Auto_Tushita or (CFrame.new(-12132, 521, -10655).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                        wait(.7)
                        repeat task.wait() _tp(CFrame.new(-13336, 486, -6985)) until not _G.Auto_Tushita or (CFrame.new(-13336, 486, -6985).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                        wait(.7)
                        repeat task.wait() _tp(CFrame.new(-13489, 332, -7925)) until not _G.Auto_Tushita or (CFrame.new(-13489, 332, -7925).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                    end
                else
                    local v = GetConnectionEnemies("Longma")
                    if v then repeat task.wait() Attack.Kill(v,_G.Auto_Tushita) until v.Humanoid.Health <= 0 or not _G.Auto_Tushita or not v.Parent
                    else 
                        if replicated:FindFirstChild("Longma") then _tp(replicated:FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(0,40,0)) end
                    end                     
                end
            end
        end)
    end
end)
Section4:AddToggle("AutoCDK", {
    Title = "Auto CDK",
    Default = false,
    Callback = function(Value)
        _G.CDK = Value
    end
})
spawn(function()    
    while wait(Sec) do
        pcall(function()
            if _G.CDK then
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                local v = GetConnectionEnemies("Cursed Skeleton Boss")
                if v then
                    repeat wait()
                        if plr.Character:FindFirstChild("Yama") or plr.Backpack:FindFirstChild("Yama") then EquipWeapon("Yama")
                        elseif plr.Character:FindFirstChild("Tushita") or plr.Backpack:FindFirstChild("Tushita") then EquipWeapon("Tushita")                                    
                        end _tp(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    until not _G.CDK or not v.Parent or v.Humanoid.Health <= 0                                
                else
                    _tp(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375)) wait(.5)
                    _tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end
        end)
    end
end)
Section4:AddSeperator("Elite Hunter")
Section4:AddToggle("AutoElite", {
    Title = "Auto Elite Hunter",
    Default = false,
    Callback = function(Value)
        _G.FarmEliteHunt = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.FarmEliteHunt then
                if plr.PlayerGui.Main.Quest.Visible == true then
                    if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
                        for i,v in pairs(replicated:GetChildren()) do
                            if string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre") then
                                _tp(v.HumanoidRootPart.CFrame)				
                            end	
                        end
                        for i,v in pairs(Enemies:GetChildren()) do
                            if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and Attack.Alive(v) then
                                repeat wait() Attack.Kill(v, _G.FarmEliteHunt) until not _G.FarmEliteHunt or plr.PlayerGui.Main.Quest.Visible == false or not v.Parent or v.Humanoid.Health <=0
                            end
                        end           
                    end        
                else
                    replicated.Remotes.CommF_:InvokeServer("EliteHunter")
                end
            end
        end)
    end
end)

local Tab5 = Window:AddTab("Melee", "rbxassetid://7733920644")
local Section5 = Tab5:AddLeftGroupbox("Fighting Styles")
Section5:AddToggle("AutoSuperhuman", {
    Title = "Auto Superhuman",
    Default = false,
    Callback = function(Value)
        _G.Auto_SuperHuman = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_SuperHuman then
                local M_Beli = plr.Data.Beli.Value
                local M_Frag = plr.Data.Fragments.Value
                if plr:FindFirstChild("WeaponAssetCache") then
                    if not GetBP("Superhuman") then                    
                        if not GetBP("Black Leg") then
                            if (M_Beli >= 150000) then replicated.Remotes.CommF_:InvokeServer("BuyBlackLeg") end
                        elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value < 299 then _G.Level = true elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value >= 300 then _G.Level = false end                        
                        if not GetBP("Electro") then
                            if (M_Beli >= 500000) then replicated.Remotes.CommF_:InvokeServer("BuyElectro") end
                        elseif GetBP("Electro") and GetBP("Electro").Level.Value < 299 then _G.Level = true elseif GetBP("Electro") and GetBP("Electro").Level.Value >= 300 then _G.Level = false end                        
                        if not GetBP("Fishman Karate") then
                            if (M_Beli >= 750000) then replicated.Remotes.CommF_:InvokeServer("BuyFishmanKarate") end
                        elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value < 299 then _G.Level = true elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value >= 300 then _G.Level = false end                        
                        if not GetBP("Dragon Claw") then
                            if (M_Frag >= 1500) then replicated.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") end
                        elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value < 299 then _G.Level = true elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value >= 300 then _G.Level = false end
                        replicated.Remotes.CommF_:InvokeServer("BuySuperhuman")          
                    end
                end        
            end
        end)
    end
end)
Section5:AddToggle("AutoDeathStep", {
    Title = "Auto Death Step",
    Default = false,
    Callback = function(Value)
        _G.AutoDeathStep = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoDeathStep then
            pcall(function()
                if plr:FindFirstChild("WeaponAssetCache") then  
                    if not GetBP("Death Step") then          
                        if not GetBP("Black Leg") then replicated.Remotes.CommF_:InvokeServer("BuyBlackLeg") end
                        if GetBP("Black Leg") and GetBP("Black Leg").Level.Value >= 400 then replicated.Remotes.CommF_:InvokeServer("BuyDeathStep") _G.Level = false elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value < 399 then _G.Level = true end
                        if GetBP("Black Leg") or GetBP("Black Leg").Level.Value >= 400 then
                            if workspace.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then            
                                if GetBP("Library Key") then repeat wait() _tp(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until not _G.AutoDeathStep or (Root.Position == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position)
                                    if (Root.CFrame == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) then replicated.Remotes.CommF_:InvokeServer("BuyDeathStep") end     
                                elseif not GetBP("Library Key") then
                                    local v = GetConnectionEnemies("Awakened Ice Admiral")
                                    if v then repeat wait() Attack.Kill(v,_G.AutoDeathStep) until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoDeathStep == false or GetBP("Library Key") or GetBP("Death Step")
                                    else _tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
                                    end
                                end		    
                            end
                        end          
                    end
                end
            end)
        end
    end
end)
Section5:AddToggle("AutoSharkman", {
    Title = "Auto Sharkman",
    Default = false,
    Callback = function(Value)
        _G.Auto_SharkMan_Karate = Value
    end
})
spawn(function() 
    while wait(Sec) do
        if _G.Auto_SharkMan_Karate then
            pcall(function()
                if plr:FindFirstChild("WeaponAssetCache") then  
                    if not GetBP("Sharkman Karate") then          
                        if not GetBP("Fishman Karate") then replicated.Remotes.CommF_:InvokeServer("BuyFishmanKarate") end
                        if GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value >= 400 then replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate") _G.Level = false elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value < 399 then _G.Level = true end
                        if GetBP("Fishman Karate") or GetBP("Fishman Karate").Level.Value >= 400 then           
                            if GetBP("Water Key") then
                                if string.find(replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                                    if GetBP("Water Key") then
                                        repeat wait() _tp(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)) until not _G.Auto_SharkMan_Karate or (Root.Position == CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position)
                                        replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    end
                                end
                            elseif not GetBP("Water Key") then
                                local v = GetConnectionEnemies("Tide Keeper")
                                if v then repeat wait() Attack.Kill(v,_G.Auto_SharkMan_Karate) until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_SharkMan_Karate == false or GetBP("Water Key") or GetBP("Sharkman Karate")		
                                else _tp(CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625))
                                end
                            end		                  
                        end          
                    end
                end
            end)
        end
    end
end)
Section5:AddToggle("AutoElectricClaw", {
    Title = "Auto Electric Claw",
    Default = false,
    Callback = function(Value)
        _G.Auto_Electric_Claw = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.Auto_Electric_Claw then
            pcall(function()
                if plr:FindFirstChild("WeaponAssetCache") then 
                    if not GetBP("Electro") then replicated.Remotes.CommF_:InvokeServer("BuyElectro") end        
                    if GetBP("Electro") and GetBP("Electro").Level.Value >= 400 then
                        if replicated.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start") == nil then notween(CFrame.new(-12548, 337, -7481)) end
                        replicated.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    elseif GetBP("Electro") and GetBP("Electro").Level.Value < 400 then
                        repeat _G.AutoFarm_Bone = true wait() until not _G.Auto_Electric_Claw or GetBP("Electric Claw") _G.AutoFarm_Bone = false
                    end
                end       
            end)
        end
    end
end)
Section5:AddToggle("AutoDragonTalon", {
    Title = "Auto Dragon Talon",
    Default = false,
    Callback = function(Value)
        _G.AutoDragonTalon = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoDragonTalon then
            pcall(function()
                if plr:FindFirstChild("WeaponAssetCache") then 
                    if not GetBP("Dragon Claw") then replicated.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") end        
                    if GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value >= 400 then replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1) replicated.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value < 400 then repeat _G.AutoFarm_Bone = true wait() until not _G.AutoDragonTalon or GetBP("Dragon Talon") _G.AutoFarm_Bone = false
                    end         
                end
            end)
        end
    end
end)
Section5:AddToggle("AutoGodhuman", {
    Title = "Auto Godhuman",
    Default = false,
    Callback = function(Value)
        _G.Auto_God_Human = Value
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_God_Human then
                if replicated.Remotes.CommF_:InvokeServer("BuyGodhuman",true) == "Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets." then
                    if GetM("Dragon Scale") == false or GetM("Dragon Scale") < 10 then
                        if World3 then
                            Lv = 1575
                            _G.Level = true
                        else
                            replicated.Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif GetM("Fish Tail") == false or GetM("Fish Tail") < 20 then
                        if World3 then
                            Lv = 1775
                            _G.Level = true
                        else
                            replicated.Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif GetM("Mystic Droplet") == false or GetM("Mystic Droplet") < 10 then
                        if World2 then
                            Lv = 1425
                            _G.Level = true
                        else
                            replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    elseif GetM("Magma Ore") == false or GetM("Magma Ore") < 20 then
                        if World2 then
                            Lv = 1175
                            _G.Level = true
                        else
                            replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end  
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("BuyGodhuman",true) == 3 then
                    return nil
                else
                    replicated.Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
            end
        end)
    end
end)

local Tab6 = Window:AddTab("Sea Events", "rbxassetid://7733960981")
local Section6 = Tab6:AddLeftGroupbox("Sea Creatures")
Section6:AddToggle("AutoShark", {
    Title = "Auto Shark",
    Default = false,
    Callback = function(Value)
        _G.Shark = Value
    end
})
Section6:AddToggle("AutoTerrorShark", {
    Title = "Auto Terror Shark",
    Default = false,
    Callback = function(Value)
        _G.TerrorShark = Value
    end
})
Section6:AddToggle("AutoSeaBeast", {
    Title = "Auto Sea Beast",
    Default = false,
    Callback = function(Value)
        _G.SeaBeast1 = Value
    end
})
Section6:AddToggle("AutoLeviathan", {
    Title = "Auto Leviathan",
    Default = false,
    Callback = function(Value)
        _G.Leviathan1 = Value
    end
})
spawn(function()
    while wait() do
        pcall(function()	
            if _G.Shark then local a={"Shark"}if CheckShark()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.Kill(c,_G.Shark)until _G.Shark==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
            if _G.TerrorShark then local a={"Terrorshark"}if CheckTerrorShark()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.KillSea(c,_G.TerrorShark)until _G.TerrorShark==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
            if _G.SeaBeast1 then if workspace.SeaBeasts:FindFirstChild("SeaBeast1")then for a,b in pairs(workspace.SeaBeasts:GetChildren())do if b:FindFirstChild("HumanoidRootPart")and b:FindFirstChild("Health")and b.Health.Value>0 then repeat task.wait()spawn(function()_tp(CFrame.new(b.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,b.HumanoidRootPart.Position.Z))end)if plr:DistanceFromCharacter(b.HumanoidRootPart.CFrame.Position)<=500 then MousePos=b.HumanoidRootPart.Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.SeaBeast1==false or not b:FindFirstChild("HumanoidRootPart")or not b.Parent or b.Health.Value<=0 end end end end
            if _G.Leviathan1 then if workspace.SeaBeasts:FindFirstChild("Leviathan")then for a,b in pairs(workspace.SeaBeasts:GetChildren())do if b:FindFirstChild("HumanoidRootPart")and b:FindFirstChild("Leviathan Segment")and b:FindFirstChild("Health")and b.Health.Value>0 then repeat task.wait()spawn(function()_tp(CFrame.new(b.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,b.HumanoidRootPart.Position.Z))end)if plr:DistanceFromCharacter(b.HumanoidRootPart.CFrame.Position)<=500 then MousePos=b:FindFirstChild("Leviathan Segment").Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.Leviathan1==false or not b:FindFirstChild("HumanoidRootPart")or not b.Parent or b.Health.Value<=0 end end end end
        end)
    end
end)
Section6:AddSeperator("Boats")
Section6:AddDropdown("SelectBoat", {
    Title = "Select Boat",
    Values = {"Guardian","PirateGrandBrigade","MarineGrandBrigade","PirateBrigade","MarineBrigade","PirateSloop","MarineSloop","Beast Hunter"},
    Default = "Guardian",
    Callback = function(Value)
        _G.SelectedBoat = Value
    end
})
Section6:AddToggle("AutoSail", {
    Title = "Auto Sail Boat",
    Default = false,
    Callback = function(Value)
        _G.SailBoats = Value
    end
})
spawn(function()
    while wait() do
        if _G.SailBoats then 
            pcall(function()        
                local myBoat = CheckBoat()
                if not myBoat and not(CheckShark()and _G.Shark or CheckTerrorShark()and _G.TerrorShark or CheckFishCrew()and _G.MobCrew or CheckPiranha()and _G.Piranha)and not(CheckEnemiesBoat()and _G.FishBoat)and not(CheckSeaBeast()and _G.SeaBeast1)and not(_G.PGB and CheckPirateGrandBrigade())and not(_G.HCM and CheckHauntedCrew())and not(_G.Leviathan1 and CheckLeviathan())then
                    local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
                    TeleportToTarget(buyBoatCFrame)
                    if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
                elseif myBoat and not(CheckShark()and _G.Shark or CheckTerrorShark()and _G.TerrorShark or CheckFishCrew()and _G.MobCrew or CheckPiranha()and _G.Piranha)and not(CheckEnemiesBoat()and _G.FishBoat)and not(CheckSeaBeast()and _G.SeaBeast1)and not(_G.PGB and CheckPirateGrandBrigade())and not(_G.HCM and CheckHauntedCrew())and not(_G.Leviathan1 and CheckLeviathan())then
                    if plr.Character.Humanoid.Sit == false then
                        local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                        _tp(boatSeatCFrame)
                    else                         
                        if _G.DangerSc == "Lv 1" then CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143)
                        elseif _G.DangerSc == "Lv 2" then CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032)
                        elseif _G.DangerSc == "Lv 3" then CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774)
                        elseif _G.DangerSc == "Lv 4" then CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
                        elseif _G.DangerSc == "Lv 5" then CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
                        elseif _G.DangerSc == "Lv 6" then CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
                        elseif _G.DangerSc == "Lv Infinite" then CFrameSelectedZone = CFrame.new(-10000000, 31, 37016.25)
                        end           
                        repeat wait() 
                            if (not _G.FishBoat and CheckEnemiesBoat()) or (not _G.PGB and CheckPirateGrandBrigade()) or (not _G.TerrorShark and CheckTerrorShark()) then
                                _tp(CFrameSelectedZone * CFrame.new(0,150,0))
                            else
                                _tp(CFrameSelectedZone)
                            end           
                        until _G.SailBoats==false or(CheckShark()and _G.Shark or CheckTerrorShark()and _G.TerrorShark or CheckFishCrew()and _G.MobCrew or CheckPiranha()and _G.Piranha)or CheckSeaBeast()and _G.SeaBeast1 or CheckEnemiesBoat()and _G.FishBoat or _G.Leviathan1 and CheckLeviathan() or _G.HCM and CheckHauntedCrew() or _G.PGB and CheckPirateGrandBrigade() or plr.Character:WaitForChild("Humanoid").Sit==false plr.Character.Humanoid.Sit = false
                    end
                end
            end)
        end
    end
end)

local Tab7 = Window:AddTab("Mirage", "rbxassetid://7733954611")
local Section7 = Tab7:AddLeftGroupbox("Mirage Island")
Section7:AddToggle("FindMirage", {
    Title = "Auto Find Mirage",
    Default = false,
    Callback = function(Value)
        _G.FindMirage = Value
    end
})
spawn(function()
    while wait() do
        if _G.FindMirage then 
            pcall(function()
                if not workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island", true) then                
                    local myBoat = CheckBoat()
                    if not myBoat then
                        local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(buyBoatCFrame)
                        if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
                    else
                        if plr.Character.Humanoid.Sit == false then
                            local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(boatSeatCFrame)
                        else            
                            repeat wait()
                                local targetDestination = CFrame.new(-10000000, 31, 37016.25)
                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                    _tp(CFrame.new(-10000000, 150, 37016.25))
                                else
                                    _tp(CFrame.new(-10000000, 31, 37016.25))
                                end
                            until not _G.FindMirage or (targetDestination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") or plr.Character.Humanoid.Sit == false plr.Character.Humanoid.Sit = false
                        end
                    end
                else
                    _tp(workspace.Map.MysticIsland.Center.CFrame*CFrame.new(0,300,0))
                end
            end)
        end
    end
end)
Section7:AddToggle("AutoGear", {
    Title = "Auto Collect Gear",
    Default = false,
    Callback = function(Value)
        _G.TPGEAR = Value
    end
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.TPGEAR then
                for i,v in pairs(workspace.Map:FindFirstChild('MysticIsland'):GetChildren()) do
                    if v.Name == "Part" then
                        if v.ClassName == "MeshPart" then _tp(v.CFrame) end
                    end
                end
            end
        end
    end)
end)
Section7:AddToggle("AutoSkullGuitar", {
    Title = "Auto Skull Guitar",
    Default = false,
    Callback = function(Value)
        _G.Auto_Soul_Guitar = Value
    end
})
task.spawn(function()
    while wait() do
        if _G.Auto_Soul_Guitar then 
            pcall(function() 
                local v = GetConnectionEnemies("Living Zombie")
                if v then 
                    v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
                    v.Head.CanCollide = false
                    v.Humanoid.Sit = false
                    v.HumanoidRootPart.CanCollide = false
                    v.Humanoid.JumpPower = 0
                    v.Humanoid.WalkSpeed = 0
                    if v.Humanoid:FindFirstChild('Animator') then v.Humanoid:FindFirstChild('Animator'):Destroy() end
                end    
            end)
        end
    end
end)
spawn(function()
    repeat task.wait() until _G.Auto_Soul_Guitar
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Soul_Guitar then
                if World3 then
                    replicated.Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    replicated.Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    if replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") == nil then
                        _tp(CFrame.new(-8655.0166015625, 141.3166961669922, 6160.0224609375))
                        replicated.Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        replicated.Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Swamp == false then
                        local v = GetConnectionEnemies("Living Zombie")
                        if v then repeat task.wait() Attack.Kill(v,_G.Auto_Soul_Guitar) until not _G.Auto_Soul_Guitar or v.Humanoid.Health <= 0 or not v.Parent or workspace.Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                        else _tp(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Gravestones == false then
                        GetFirePlacard("7","Left")
                        GetFirePlacard("6","Left")
                        GetFirePlacard("5","Left")
                        GetFirePlacard("4","Right")
                        GetFirePlacard("3","Left")
                        GetFirePlacard("2","Right")
                        GetFirePlacard("1","Right")
                    elseif replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Ghost == false then
                        replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == false then
                        _tp(CFrame.new(-9532.8232421875, 6.471667766571045, 6078.068359375))
                        repeat wait()
                            local z1 = getRT(1)
                            local _z1 = getT(1)
                            if z1 and _z1 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            end
                        until z1 == _z1
                        repeat wait()
                            local z2 = getRT(2)
                            local _z2 = getT(3)
                            if z2 and _z2 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            end
                        until z2 == _z2
                        repeat wait()
                            local z3 = getRT(3)
                            local _z3 = getT(4)
                            if z3 and _z3 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            end
                        until z3 == _z3
                        repeat wait()
                            local z4 = getRT(4)
                            local _z4 = getT(7)
                            if z4 and _z4 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            end
                        until z4 == _z4
                        repeat wait()
                            local z5 = getRT(5)
                            local _z5 = getT(10)
                            if z5 and _z5 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))    
                            end
                        until z5 == _z5
                        repeat wait()    
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))       
                        until workspace.Map["Haunted Castle"].Tablet.Segment2.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment5.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment6.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment8.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment9.Line.Rotation.Z == 0
                    elseif replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == false then
                        _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                        _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                        _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                        _tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                    end
                end
            end
        end)
    end
end)
Section7:AddSeperator("Race V4")
Section7:AddToggle("AutoTrainV4", {
    Title = "Auto Train V4",
    Default = false,
    Callback = function(Value)
        _G.AcientOne = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AcientOne then
                local BonesTable = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
                for i=1,#BonesTable do
                    if plr.Character:FindFirstChild("RaceEnergy").Value == 1 then
                        vim1:SendKeyEvent(true, "Y", false, game)
                        replicated.Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
                        _tp(CFrame.new(-8987.041015625, 215.862060546875, 5886.71044921875))
                    elseif plr.Character:FindFirstChild("RaceTransformed").Value == false then
                        local v = GetConnectionEnemies(BonesTable)
                        if v then repeat wait() Attack.Kill(v, _G.AcientOne) until _G.AcientOne == false or v.Humanoid.Health <= 0 or not v.Parent
                        else _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)) 
                        end
                    end
                end
            end
        end)
    end
end)
Section7:AddToggle("AutoTrials", {
    Title = "Auto Complete Trials",
    Default = false,
    Callback = function(Value)
        _G.Complete_Trials = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Complete_Trials then
                if tostring(plr.Data.Race.Value) == "Mink" then
                    notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-20,0))
                end
            end
        end)
    end
end)
spawn(function()
    while wait(Sec) do
        pcall(function() 
            if _G.Complete_Trials then
                if tostring(plr.Data.Race.Value) == "Fishman" then
                    if GetSeaBeastTrial() then            
                        repeat task.wait()
                            spawn(function()_tp(CFrame.new(GetSeaBeastTrial().HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 300,GetSeaBeastTrial().HumanoidRootPart.Position.Z))end)
                            MousePos = GetSeaBeastTrial().HumanoidRootPart.Position
                            Useskills("Melee","Z")
                            Useskills("Melee","X")
                            Useskills("Melee","C")
                            wait(.1)
                            Useskills("Sword","Z")
                            Useskills("Sword","X")
                            wait(.1)
                            Useskills("Blox Fruit","Z")
                            Useskills("Blox Fruit","X")
                            Useskills("Blox Fruit","C")
                            wait(.1)
                            Useskills("Gun","Z")
                            Useskills("Gun","X")
                        until _G.Complete_Trials == false or not GetSeaBeastTrial()
                    end          
                end
            end
        end)
    end
end)
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Complete_Trials then
                if tostring(plr.Data.Race.Value) == "Cyborg" then
                    _tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0,500,0))
                end
            end
        end)
    end
end)
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Complete_Trials then
                if tostring(plr.Data.Race.Value) == "Skypiea" then
                    notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
                end
            end
        end)
    end
end)
spawn(function()
    while wait(.1) do   
        pcall(function()
            if _G.Complete_Trials then
                if tostring(plr.Data.Race.Value) == "Human" or tostring(plr.Data.Race.Value) == "Ghoul" then	      
                    local TrialsTables = {"Ancient Vampire","Ancient Zombie"}
                    local v = GetConnectionEnemies(TrialsTables)
                    if v then repeat wait() Attack.Kill(v, _G.Complete_Trials) until _G.Complete_Trials == false or not v.Parent or v.Humanoid.Health <= 0 end		
                end
            end
        end)
    end
end)

local Tab8 = Window:AddTab("Drago", "rbxassetid://7733920644")
local Section8 = Tab8:AddLeftGroupbox("Dojo Quests")
Section8:AddToggle("AutoDojo", {
    Title = "Auto Dojo Trainer",
    Default = false,
    Callback = function(Value)
        _G.Dojoo = Value
    end
})
function printBeltName(data) if type(data) == "table" and data.Quest["BeltName"] then return data.Quest["BeltName"] end end
spawn(function()
    while wait(Sec) do
        if _G.Dojoo then
            pcall(function()
                local args = {[1] = {["NPC"] = "Dojo Trainer",["Command"] = "RequestQuest"}}        
                local progress = replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                local NameBelt = printBeltName(progress)
                if debug == false and not progress and not NameBelt then
                    _tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875))
                    debug = true
                elseif debug == true and (CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                    if NameBelt == "White" then
                        local v = GetConnectionEnemies("Skull Slayer")
                        if v then repeat task.wait() Attack.Kill(v, _G.Dojoo) until not progress or not _G.Dojoo or not Attack.Alive(v)
                        else _tp(CFrame.new(-16759.58984375, 71.28376770019531, 1595.3399658203125))
                        end
                    elseif NameBelt == "Yellow" then
                        repeat task.wait()
                            _G.SeaBeast1 = true
                            _G.TerrorShark = true
                            _G.Shark = true
                            _G.Piranha = true
                            _G.MobCrew = true
                            _G.FishBoat = true
                            _G.SailBoats = true
                        until not _G.Dojoo or not progress
                        _G.SeaBeast1 = false
                        _G.TerrorShark = false
                        _G.Shark = false
                        _G.Piranha = false
                        _G.MobCrew = false
                        _G.FishBoat = false
                        _G.SailBoats = false               
                    elseif NameBelt == "Green" then
                        repeat task.wait()
                            _G.SailBoats = true
                        until not _G.Dojoo or not progress
                        _G.SailBoats = false
                    elseif NameBelt == "Purple" then
                        repeat task.wait()
                            _G.FarmEliteHunt = true
                        until not _G.Dojoo or not progress
                        _G.FarmEliteHunt = false
                    elseif NameBelt == "Red" then
                        repeat task.wait()
                            _G.SailBoats = true
                            _G.FishBoat = true
                        until not _G.Dojoo or not progress
                        _G.SailBoats = false
                        _G.FishBoat = false                      
                    elseif NameBelt == "Black" then
                        repeat task.wait()              
                            if workspace.Map:FindFirstChild("PrehistoricIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then    
                                _G.Prehis_Find = true                   
                                if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt",true) then
                                    _G.Prehis_Skills = false
                                    _G.Prehis_Find = true
                                else
                                    _G.Prehis_Skills = true
                                    _G.Prehis_Find = false
                                end
                            else
                                _G.Prehis_Find = true
                                _G.Prehis_Skills = false
                            end
                        until not _G.Dojoo or not progress
                        _G.Prehis_Find = false
                        _G.Prehis_Skills = false                        
                    elseif NameBelt == "Orange" or NameBelt == "Blue" then
                        return nil
                    end
                end
                if not progress then
                    debug = false
                    local args = {[1] = {["NPC"] = "Dojo Trainer",["Command"] = "ClaimQuest"}}
                    replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                end
            end)
        end
    end
end)
Section8:AddToggle("AutoDragonHunter", {
    Title = "Auto Dragon Hunter",
    Default = false,
    Callback = function(Value)
        _G.FarmBlazeEM = Value
    end
})
checkQuesta=function()local a={[1]={["Context"]="Check"}}local b=nil;pcall(function()local c={[1]={["Context"]="RequestQuest"}}game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack(c))end)local d,e=pcall(function()b=game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack(a))end)local f=false;local g;local h;local i;if b then if b.Text then f=true;local j=b.Text;if string.find(tostring(j),"Defeat")then i=1;g=string.sub(tostring(j),8,9)g=tonumber(g)local k={"Hydra Enforcer","Venomous Assailant"}for l,m in pairs(k)do if string.find(j,m)then h=m;break end end elseif string.find(tostring(j),"Destroy")then g=10;i=2;h=nil end end end;return f,h,g,i end
BackTODoJo=function()for a,b in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren())do if b.Name=="NotificationTemplate"then if string.find(b.Text,"Head back to the Dojo to complete more tasks")then return true end end end;return false end
DragonMobClear=function(a,b,c)if workspace.Enemies:FindFirstChild(b)then for d,e in pairs(workspace.Enemies:GetChildren())do if e.Name==b and Attack.Alive(e)then if a then Attack.Kill(e,a)end end end else _tp(c)end end
spawn(function()
    while wait() do 
        if _G.FarmBlazeEM then
            pcall(function()              
                local a,v,h,x = checkQuesta()                  
                if a == true and not BackTODoJo() then
                    if x == 1 then
                        if v == "Hydra Enforcer" or v == "Venomous Assailant" then            
                            repeat wait()
                                DragonMobClear(true, v, CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
                            until not _G.FarmBlazeEM or not a or BackTODoJo()                            
                        end      
                    elseif x == 2 then
                        if workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true) then
                            repeat wait()                
                                spawn(function() _tp(workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).CFrame * CFrame.new(4,0,0)) end)
                                if (workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position - Root.Position).Magnitude <= 200 then
                                    MousePos = workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position
                                    Useskills("Melee","Z")
                                    Useskills("Melee","X")
                                    Useskills("Melee","C")
                                    wait(.5)
                                    Useskills("Sword","Z")
                                    Useskills("Sword","X")
                                    wait(.5)
                                    Useskills("Blox Fruit","Z")
                                    Useskills("Blox Fruit","X")
                                    Useskills("Blox Fruit","C")
                                    wait(.5)
                                    Useskills("Gun","Z")
                                    Useskills("Gun","X")
                                end
                            until not _G.FarmBlazeEM or not a or BackTODoJo()
                        end
                    end
                else
                    _tp(CFrame.new(5813, 1208, 884))
                    DragonMobClear(false, nil, nil) 
                end
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do 
        if _G.FarmBlazeEM then
            pcall(function()              
                if workspace.EmberTemplate:FindFirstChild("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame        
                end
            end)
        end
    end
end)
Section8:AddToggle("AutoDragoV1", {
    Title = "Auto Drago V1",
    Default = false,
    Callback = function(Value)
        _G.DragoV1 = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.DragoV1 then     
                if GetM("Dragon Egg") <= 0 then
                    repeat wait()
                        _G.Prehis_Find = true
                        _G.Prehis_Skills = true
                        _G.Prehis_DE = true
                    until not _G.DragoV1 or GetM("Dragon Egg") >= 1
                    _G.Prehis_Find = false
                    _G.Prehis_Skills = false
                    _G.Prehis_DE = false
                end
            end
        end)
    end
end)
Section8:AddToggle("AutoDragoV2", {
    Title = "Auto Drago V2",
    Default = false,
    Callback = function(Value)
        _G.AutoFireFlowers = Value
    end
})
spawn(function()
    while wait(Sec) do
        if _G.AutoFireFlowers then
            local FireFlower = workspace:FindFirstChild("FireFlowers")
            local v = GetConnectionEnemies("Forest Pirate")
            if v then repeat wait() Attack.Kill(v,_G.AutoFireFlowers) until not _G.AutoFireFlowers or not v.Parent or v.Humanoid.Health <= 0 or FireFlower
            else _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
            end      
            if FireFlower then
                for i, v in pairs(FireFlower:GetChildren()) do
                    if (v:IsA("Model") and v.PrimaryPart) then
                        local FlowerPos = v.PrimaryPart.Position;
                        local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                        local Magnited = (FlowerPos - playerRoot).Magnitude;
                        if (Magnited <= 100) then
                            vim1:SendKeyEvent(true, "E", false, game) wait(1.5) vim1:SendKeyEvent(false, "E", false, game)
                        else
                            _tp(CFrame.new(FlowerPos));
                        end
                    end
                end
            end
        end
    end
end)
Section8:AddToggle("AutoDragoV3", {
    Title = "Auto Drago V3",
    Default = false,
    Callback = function(Value)
        _G.DragoV3 = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.DragoV3 then     
                repeat wait()
                    _G.DangerSc = "Lv Infinite"
                    _G.SailBoats = true
                    _G.TerrorShark = true
                until not _G.DragoV3
                _G.DangerSc = "Lv 1"
                _G.SailBoats = false
                _G.TerrorShark = false
            end
        end)
    end
end)

local Tab9 = Window:AddTab("Prehistoric", "rbxassetid://7733960981")
local Section9 = Tab9:AddLeftGroupbox("Volcanic Island")
Section9:AddToggle("FindPrehistoric", {
    Title = "Auto Find Prehistoric",
    Default = false,
    Callback = function(Value)
        _G.Prehis_Find = Value
    end
})
spawn(function()
    while wait() do
        if _G.Prehis_Find then 
            pcall(function()
                if not workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island", true) then                
                    local myBoat = CheckBoat()
                    if not myBoat then
                        local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(buyBoatCFrame)
                        if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
                    else
                        if plr.Character.Humanoid.Sit == false then
                            local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(boatSeatCFrame)
                        else                            
                            repeat wait() 
                                local targetDestination = CFrame.new(-10000000, 31, 37016.25)
                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                    _tp(CFrame.new(-10000000, 150, 37016.25))
                                else
                                    _tp(CFrame.new(-10000000, 31, 37016.25))
                                end
                            until not _G.Prehis_Find or (targetDestination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island") or plr.Character.Humanoid.Sit == false plr.Character.Humanoid.Sit = false
                        end
                    end
                else
                    if (workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island").CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island").CFrame)end
                    if workspace.Map:FindFirstChild("PrehistoricIsland", true) or workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island", true) then            
                        if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
                            if plr:DistanceFromCharacter(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame.Position) <= 150 then
                                fireproximityprompt(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.ProximityPrompt, math.huge)
                                vim1:SendKeyEvent(true, "E", false, game) wait(1.5) vim1:SendKeyEvent(false, "E", false, game)
                            end
                            _tp(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame)              
                        end
                    end
                end
            end)
        end
    end
end)
Section9:AddToggle("AutoPatchVolcano", {
    Title = "Auto Patch Volcano",
    Default = false,
    Callback = function(Value)
        _G.Prehis_Skills = Value
    end
})
spawn(function()
    while wait() do
        if _G.Prehis_Skills then
            local prehistoricIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIsland then
                for _, obj in pairs(prehistoricIsland:GetDescendants()) do
                    if obj:IsA("Part") and obj.Name:lower():find("lava") then obj:Destroy() end
                    if obj:IsA("MeshPart") and obj.Name:lower():find("lava") then obj:Destroy() end
                end
                local lavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
                if lavaModel and lavaModel:IsA("Model") then lavaModel:Destroy() end
                local Island = workspace.Map:FindFirstChild("PrehistoricIsland")
                if Island then   
                    local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")   
                    for _, v in pairs(Island:GetDescendants()) do
                        if v.Name == "TouchInterest" then
                            if not (trialTeleport and v:IsDescendantOf(trialTeleport)) then
                                v.Parent:Destroy()
                            end
                        end
                    end
                end  
            end
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Prehis_Skills then
                if workspace.Enemies:FindFirstChild("Lava Golem") then
                    local v = GetConnectionEnemies("Lava Golem")
                    if v then repeat wait()Attack.Kill(v,_G.Prehis_Skills) v.Humanoid:ChangeState(15)until not _G.Prehis_Skills or not v.Parent or v.Humanoid.Health <= 0 end
                end
                for i,v in pairs(game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks:GetChildren()) do
                    if v:FindFirstChild("VFXLayer") then
                        if v:FindFirstChild("VFXLayer").At0.Glow.Enabled == true or v.VFXLayer.At0.Glow.Enabled == true then
                            repeat wait()
                                _tp(v.VFXLayer.CFrame)
                                if v.VFXLayer.At0.Glow.Enabled == true and plr:DistanceFromCharacter(v.VFXLayer.CFrame.Position) <= 150 then
                                    MousePos = v.VFXLayer.CFrame.Position
                                    Useskills("Melee","Z") wait(.5)
                                    Useskills("Melee","X") wait(.5)
                                    Useskills("Melee","C") wait(.5)
                                    Useskills("Blox Fruit","Z") wait(.5)
                                    Useskills("Blox Fruit","X") wait(.5)
                                    Useskills("Blox Fruit","C")
                                end   
                            until not _G.Prehis_Skills or v:FindFirstChild("VFXLayer").At0.Glow.Enabled == false or v.VFXLayer.At0.Glow.Enabled == false            
                        end
                    end
                end
            end
        end)
    end
end)
Section9:AddToggle("AutoCollectBones", {
    Title = "Auto Collect Dino Bones",
    Default = false,
    Callback = function(Value)
        _G.Prehis_DB = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Prehis_DB then
                if workspace:FindFirstChild("DinoBone") then
                    for i,v in pairs(workspace:GetChildren()) do
                        if v.Name == "DinoBone" then _tp(v.CFrame) end
                    end
                end
            end
        end)
    end
end)
Section9:AddToggle("AutoCollectEggs", {
    Title = "Auto Collect Dragon Eggs",
    Default = false,
    Callback = function(Value)
        _G.Prehis_DE = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Prehis_DE then
                if workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then _tp(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg").Molten.CFrame) fireproximityprompt(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs.DragonEgg.Molten.ProximityPrompt, 30) end        
            end
        end)
    end
end)

local Tab10 = Window:AddTab("Raids", "rbxassetid://7733954611")
local Section10 = Tab10:AddLeftGroupbox("Raid Settings")
Section10:AddDropdown("SelectChip", {
    Title = "Select Chip",
    Values = DungeonTables,
    Default = "Flame",
    Callback = function(Value)
        _G.SelectChip = Value
    end
})
Section10:AddToggle("AutoStartRaid", {
    Title = "Auto Start Raid",
    Default = false,
    Callback = function(Value)
        _G.Auto_StartRaid = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_StartRaid then
                if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
                    if GetBP("Special Microchip") then
                        if World2 then
                            _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                            fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then                   
                            replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
                            fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)
Section10:AddToggle("AutoCompleteRaid", {
    Title = "Auto Complete Raid",
    Default = false,
    Callback = function(Value)
        _G.Raiding = Value
    end
})
spawn(function()
    pcall(function() 
        while wait(Sec) do
            if _G.Raiding then  
                if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then          
                    local islands = {"Island5","Island 4", "Island 3", "Island 2", "Island 1"}
                    for _, island in ipairs(islands) do
                        local location = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(island)
                        if location then
                            for i,v in pairs(workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait() Attack.Kill(v,_G.Raiding) NextIs=false until not _G.Raiding or not v.Parent or v.Humanoid.Health <= 0 NextIs=true
                                    end
                                end
                            end
                        end
                    end
                else
                    NextIs = false
                end
            else
                NextIs = false
            end
        end
    end)
end)
Section10:AddToggle("AutoAwakening", {
    Title = "Auto Awakening",
    Default = false,
    Callback = function(Value)
        _G.Auto_Awakener = Value
    end
})
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Awakener then
                replicated.Remotes.CommF_:InvokeServer("Awakener","Check")
                replicated.Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end
        end)
    end
end)

local Tab11 = Window:AddTab("Misc", "rbxassetid://7733960981")
local Section11 = Tab11:AddLeftGroupbox("Teleports")
local Location = {}
for i,v in pairs(workspace["_WorldOrigin"].Locations:GetChildren()) do  
    table.insert(Location ,v.Name)
end
Section11:AddDropdown("TeleportIsland", {
    Title = "Select Island",
    Values = Location,
    Default = Location[1] or "Island",
    Callback = function(Value)
        _G.Island = Value
    end
})
Section11:AddToggle("AutoTeleport", {
    Title = "Teleport to Island",
    Default = false,
    Callback = function(Value)
        _G.Teleport = Value
    end
})
spawn(function()
    if _G.Teleport then
        for i,v in pairs(workspace["_WorldOrigin"].Locations:GetChildren()) do
            if v.Name == _G.Island then
                repeat wait()
                    _tp(v.CFrame * CFrame.new(0, 30, 0)) 
                until not _G.Teleport or Root.CFrame == v.CFrame
            end
        end
    end
end)
Section11:AddButton({
    Title = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
})
Section11:AddButton({
    Title = "Hop Server",
    Callback = function()
        Hop()
    end
})
Section11:AddSeperator("ESP Options")
Section11:AddToggle("ESPPlayers", {
    Title = "ESP Players",
    Default = false,
    Callback = function(Value)
        PlayerEsp = Value
    end
})
spawn(function()
    while PlayerEsp do wait()
        EspPly()
    end
end)
Section11:AddToggle("ESPFruits", {
    Title = "ESP Fruits",
    Default = false,
    Callback = function(Value)
        DevilFruitESP = Value
    end
})
spawn(function()
    while DevilFruitESP do wait()
        DevEsp() 
    end
end)
Section11:AddToggle("ESPChests", {
    Title = "ESP Chests",
    Default = false,
    Callback = function(Value)
        ChestESP = Value
    end
})
spawn(function()
    while ChestESP do wait()
        ChestEsp() 
    end
end)
Section11:AddToggle("ESPIslands", {
    Title = "ESP Islands",
    Default = false,
    Callback = function(Value)
        IslandESP = Value
    end
})
spawn(function()
    while IslandESP do wait()
        LocationEsp() 
    end
end)
Section11:AddSeperator("Graphics")
Section11:AddToggle("RTXMode", {
    Title = "RTX Mode",
    Default = false,
    Callback = function(Value)
        _G.RTXMode = Value
    end
})
spawn(function()
    local a = game.Lighting
    local c = Instance.new("ColorCorrectionEffect", a)
    local e = Instance.new("ColorCorrectionEffect", a)
    OldAmbient = a.Ambient
    OldBrightness = a.Brightness
    OldColorShift_Top = a.ColorShift_Top
    OldBrightnessc = c.Brightness
    OldContrastc = c.Contrast
    OldTintColorc = c.TintColor
    OldTintColore = e.TintColor    
    if not _G.RTXMode then return end
    while _G.RTXMode do wait()
        a.Ambient = Color3.fromRGB(33, 33, 33)
        a.Brightness = 0.3
        c.Brightness = 0.176
        c.Contrast = 0.39
        c.TintColor = Color3.fromRGB(217, 145, 57)
        game.Lighting.FogEnd = 999
        if not plr.Character.HumanoidRootPart:FindFirstChild("PointLight") then
            local a2 = Instance.new("PointLight")
            a2.Parent = plr.Character.HumanoidRootPart
            a2.Range = 15
            a2.Color = Color3.fromRGB(217, 145, 57)
        end
        if not _G.RTXMode then
            a.Ambient = OldAmbient
            a.Brightness = OldBrightness
            a.ColorShift_Top = OldColorShift_Top
            c.Contrast = OldContrastc
            c.Brightness = OldBrightnessc
            c.TintColor = OldTintColorc
            e.TintColor = OldTintColore
            game.Lighting.FogEnd = 2500
            plr.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
        end
    end
end)
Section11:AddToggle("FullBright", {
    Title = "Full Bright",
    Default = false,
    Callback = function(Value)
        bright = Value
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if bright then
                Lighting.Ambient = Color3.new(1, 1, 1)
                Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
                Lighting.ColorShift_Top = Color3.new(1, 1, 1)
            else
                Lighting.Ambient = Color3.new(0, 0, 0)
                Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
                Lighting.ColorShift_Top = Color3.new(0, 0, 0)
            end
        end)
    end
end)
Section11:AddButton({
    Title = "Low CPU Mode",
    Callback = function()
        LowCpu()
    end
})
Section11:AddButton({
    Title = "Unload UI",
    Callback = function()
        Library:DestroyUI()
    end
})

local CoreGui = game:GetService("CoreGui")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "EclipseToggleButton"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0, 55, 0, 55)
ToggleButton.Position = UDim2.new(0.02, 0, 0.5, -27)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ToggleButton.BackgroundTransparency = 0.2
ToggleButton.BorderSizePixel = 0
ToggleButton.Image = "rbxassetid://112518061635682"
ToggleButton.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    Window:Toggle()
end)

local dragging = false
local dragStart, startPos

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ToggleButton.Position
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        ToggleButton.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

ToggleButton.InputEnded:Connect(function()
    dragging = false
end)

Library:Notify({
    Title = "Eclipse Hub",
    Desc = "Script loaded with " .. #Window.Tabs .. " tabs!",
    Duration = 3
})
