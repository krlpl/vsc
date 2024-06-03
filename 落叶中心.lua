function Notify(Title1, Text1, Icon1, Time1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Title1,
        Text = Text1,
        Icon = Icon1,
        Duration = Time1,
    })
end
Notify("落叶中心", "作者krX", "rbxassetid://17360377302", 3)
Notify("永久免费", "祝你玩的开心","rbxassetid://17360377302",3)
Notify("永久免费", "没有盈利","rbxassetid://17360377302",3)
Notify("落叶中心", "永久免费","rbxassetid://17360377302",3)
Notify("拒绝跑路", "拒绝倒卖","rbxassetid://17360377302",3)
Notify("启动完成", "祝你玩的开心","rbxassetid://17360377302",3)

local Update = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\102\50\48\105\51\48\115\52\48\104\47\67\111\111\108\76\105\98\47\109\97\105\110\47\78\101\119\46\108\117\97"))()
local Window = Update:Window("落叶中心");

local About = Window:Tab("公告","rbxassetid://6026568198")
local General = Window:Tab("主要","rbxassetid://6026568198")
local JSDGg = Window:Tab("驾驶帝国","rbxassetid://6026568198")
local FMDH = Window:Tab("伐木大亨2","rbxassetid://6026568198")
local SKQS = Window:Tab("鲨口求生2","rbxassetid://6026568198")
local DOORS = Window:Tab("doors","rbxassetid://6026568198")
local LLCQ = Window:Tab("力量传奇","rbxassetid://6026568198")
local JYRS = Window:Tab("监狱人生","rbxassetid://6026568198")
local ZDYS = Window:Tab("战斗勇士","rbxassetid://6026568198")
local RZCQ = Window:Tab("忍者传奇","rbxassetid://6026568198")
local HBTX = Window:Tab("河北唐县","rbxassetid://6026568198")
local XG = Window:Tab("新更","rbxassetid://6026568198")
local LS = Window:Tab("自然灾害","rbxassetid://6026568198")
local XC = Window:Tab("其他脚本","rbxassetid://6026568198")
local LQ = Winodow:Tab("视觉","rbxassetid://6026568198")

About:Seperator("你的用户名:"..game.Players.LocalPlayer.Name)
About:Seperator("你的注入器:"..identifyexecutor())
About:Seperator("服务器id:"..game.GameId)
About:Seperator("作者qq3648447529")
About:Seperator("k1s工作室")
Abou:Seperator("永不跑路")
About:Button("k1s工作室", function()
    setclipboard("1")
end)
About:Button("作者krX", function()
    setclipboard("2")
end)
About:Button("免费", function()
    setclipboard("3")
end)
About:Button("拒绝倒卖", function()
     setclipboard("4")
end)
About:Button("复制作者QQ", function()
    setclipboard("3648447529")
end)
About:Button("复制QQ群", function()
    setclipboard("341063007")
end)

General:Slider("步行速度!", 16, 400, game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, function(Speed)
    spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
General:Slider("跳跃高度!", 50, 400, game.Players.LocalPlayer.Character.Humanoid.JumpPower, function(Jump)
    spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
General:Textbox("重力设置!", "Gravity", true, function(Gravity)
    spawn(function() while task.wait() do game.Workspace.Gravity = Gravity end end)
end)
General:Toggle("夜视", false, function(Light)
    spawn(function() while task.wait() do if Light then game.Lighting.Ambient = Color3.new(1, 1, 1) else game.Lighting.Ambient = Color3.new(0, 0, 0) end end end)
end)
General:Button("透视", function()
    local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
        end
    end)
end)
General:Button("隐身道具", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)
General:Toggle("穿墙(可用)", false, function(NC)
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    if NC then
        Clipon = true
    else
        Clipon = false
    end
    Stepped = game:GetService("RunService").Stepped:Connect(function()
        if not Clipon == false then
            for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Players.LocalPlayer.Name then
                    for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        else
            Stepped:Disconnect()
        end
    end)
end)
General:Button("最强透视",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
end)
General:Button("飞行v3",function()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()
end)
General:Button("甩人",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
General:Button("反挂机v2",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
General:Button("铁拳",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()
end)
General:Button("键盘",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
General:Button("动画中心",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
General:Button("立即死亡",function()
    game.Players.LocalPlayer.Character.Humanoid.Health=0
end)
General:Button("爬墙",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
General:Button("转起来",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)
General:Button("子弹追踪",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
end)
General:Button("飞车",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
end)
General:Button("Synapse X",function()
     loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
end)

JSDGg:Button("自动刷钱", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire"))()
end)

FMDH:Button("伐木大亨2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf"))()
end)

SKQS:Dropdown("免费船只", {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"}, function(CS)
    game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(CS)
end)
SKQS:Button("自动杀鲨鱼🦈", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
end)

DOORS:Button("NBDoors", function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
end)
DOORS:Button("AND已汉化 推荐配合穿墙", function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)
DOORS:Button("穿墙(无拉回)", function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
end)
DOORS:Button("手电筒", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
end)
DOORS:Button("拯救上帝", function()
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eodk"))()
    local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eosk"))()
    local tweenService = game:GetService("TweenService")
    local jesusModel = game:GetObjects("rbxassetid://13048955592")[1] or LoadCustomInstance("rbxassetid://13048955592") 
    local caveModel = game:GetObjects("rbxassetid://13049026203")[1] or LoadCustomInstance("rbxassetid://13049026203")
    local CameraShaker = require(game:GetService("ReplicatedStorage").CameraShaker)
    local ranBoulderProximityPrompt = false
    -- Npcs
    local civilian1 = game:GetObjects("rbxassetid://13051551926")[1]
    local civilian2 = game:GetObjects("rbxassetid://13051633935")[1]
    local civilian3 = game:GetObjects("rbxassetid://13052090579")[1]
    local tablewithuno = game:GetObjects("rbxassetid://13053069721")[1]
    local luk3 = game:GetObjects("rbxassetid://13053085601")[1]
    local upio = game:GetObjects("rbxassetid://13053089753")[1]
    --Toy and Model For The Egg
    local easternegg = game:GetObjects("rbxassetid://13053213567")[1]
    -- misc functions
    function deleteStuff()
        if workspace.CurrentRooms["0"]:FindFirstChild("RiftSpawn") then
            workspace.CurrentRooms["0"].RiftSpawn:Destroy()
        end    
        for _,i in ipairs(workspace.CurrentRooms["0"].Assets:GetChildren()) do
            if i.Name == "Luggage" or i.Name == "Luggage_Cart" or i.Name == "Luggage_Cart_Crouch" then
                i:Destroy()
            end
        end
    end
    function fadeOutThing(object,seconds)
        for _,instance in ipairs(object:GetDescendants()) do
            if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
                print()
                tweenService:Create(instance, TweenInfo.new(seconds,Enum.EasingStyle.Quad), {["Transparency"] = 1}):Play()
            end
        end
    end
    function fadeInThing(object,seconds)
        local function fadeIn(part,seconds)
            local initialTransparency = part.Transparency
            part.Transparency = 1
            local tween = tweenService:Create(part, TweenInfo.new(seconds, Enum.EasingStyle.Quad), {Transparency = initialTransparency}):Play()
        end
        for _, instance in pairs(object:GetDescendants()) do
            if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
                fadeIn(instance,seconds)
            end
        end
    end
    -- parenting stuff
    jesusModel.Parent = workspace
    caveModel.PrimaryPart = caveModel.Boulder
    -- i forgot to set it's primary part ._.
    jesusModel.PrimaryPart = jesusModel["Plank Vertical"]
    -- tp in front of the elevator
    jesusModel:PivotTo(CFrame.new(Vector3.new(0.237418652, 2.02649975, 3241.82837, -1.62920685e-07, -1, 1.40790661e-07, 1, -1.62920685e-07, -3.58895669e-08, 3.58895882e-08, 1.40790661e-07, 1)) * CFrame.Angles(0, math.rad(180), math.rad(90)))
    -- delete misc things that might interfere
    deleteStuff()
    -- main code
    jesusModel.jesus.ProximityPrompt.Triggered:Connect(function()
        Achievements.Get({Title = "成功解锁彩蛋", Desc = "你拯救了十字架上的耶稣", Reason = "k1s魔改", Image = "https://raw.githubusercontent.com/persopoiu/scripts/main/66963_easter_egg_green_icon.png"})
        -- fade out
        fadeOutThing(jesusModel,0.5)
        wait(0.5)
        jesusModel:Destroy()
        -- fade in
        caveModel.Parent = workspace
        wait()
        fadeInThing(caveModel,1.5)
        -- move the cave model
        caveModel:PivotTo(CFrame.new(Vector3.new(0, -1.3, 3250, 1, 0, 0, 0, 1, 0, 0, 0, 1)) * CFrame.Angles(math.rad(-90), 0, 0))
        -- Npc 1
        civilian1.Parent = game.workspace
            wait()
        fadeInThing(civilian1,1.5)
       -- Npc 2
        civilian2.Parent = game.workspace
            wait()
        fadeInThing(civilian2,1.5)
        --npc 3
        civilian3.Parent = game.workspace
            wait()
        fadeInThing(civilian3,1.5)
        --Easteregg
        easternegg.Parent = game.workspace
            wait()
        fadeInThing(easternegg,1.5)
        --tablewithuno
        tablewithuno.Parent = game.workspace
            wait()
        fadeInThing(tablewithuno,1.5)
        --Luk3
        luk3.Parent = game.workspace
            wait()
        fadeInThing(luk3,1.5)
        --Upio
        upio.Parent = game.workspace
            wait()
        fadeInThing(upio,1.5)
    end)
    caveModel.Boulder.ProximityPrompt.Triggered:Connect(function()
        spawn(function()
            if not ranBoulderProximityPrompt then
                -- caption
                firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, '你挪动了石头放出了上帝',true,2.5)
                -- camera shake
                local camShake = CameraShaker.new(200, function(shakeCFrame)
                    game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * shakeCFrame
                end)
                camShake:Start()
                camShake:Shake(CameraShaker.Presets.Explosion)
                wait(1)
                camShake:Stop()
                ranBoulderProximityPrompt = true
            end
        end)
        local boulder = caveModel.Boulder
        spawn(function()
            for _,i in ipairs(workspace.cave:GetChildren()) do
                if i.Name == " " then
                    fadeOutThing(i,.5)
                end
            end
            wait(.5)
            for _,i in ipairs(workspace.cave:GetChildren()) do
                if i.Name == " " then
                    i:Destroy()
                end
            end
        end)
        tweenService:Create(boulder, TweenInfo.new(1.2, Enum.EasingStyle.Quad),{["Rotation"] = Vector3.new(80,0,0), ["Position"] = Vector3.new(boulder.Position.X,boulder.Position.Y,3258)}):Play()
        while wait(0.1) do
            local primaryPart = caveModel.Jesus.Torso
            local camera = workspace.CurrentCamera
            local player = game.Players.LocalPlayer
            local distanceThreshold = 10 -- the maximum distance between the player and the Jesus model for the achievement to be earned
            -- check if the player is within the distance threshold of the Jesus model's primary part
            local distance = (primaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance <= distanceThreshold then
                -- check if the player's camera is looking at the Jesus model's primary part
                local direction = primaryPart.Position - camera.CFrame.Position
                local dotProduct = direction.Unit:Dot(camera.CFrame.LookVector.Unit)
                if dotProduct > 0.9 then -- the player is looking at the Jesus model
                    break
                end
            end
        end
        Achievements.Get({Title = "救出耶稣已解锁", Desc = "谢谢你救了我", Reason = "我将赐予你力量", Image = "https://github.com/persopoiu/scripts/raw/main/Untitled.png"})
        loadstring(game:HttpGet('https://pastebin.com/raw/M3X9iuE1'))()
    end)
    local npcdialogue = Instance.new("ScreenGui")
    local dialogueFrame = Instance.new("ImageLabel")
    local dialogueLabel = Instance.new("TextLabel")
    
    npcdialogue.Name = "npcdialogue"
    npcdialogue.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    npcdialogue.Enabled = false
    npcdialogue.ResetOnSpawn = false
    
    dialogueFrame.Name = "dialogueFrame"
    dialogueFrame.Parent = npcdialogue
    dialogueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    dialogueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dialogueFrame.BackgroundTransparency = 1.000
    dialogueFrame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
    dialogueFrame.Size = UDim2.new(0.5, 0, 0.200000003, 0)
    dialogueFrame.Image = "rbxassetid://3570695787"
    dialogueFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
    dialogueFrame.ScaleType = Enum.ScaleType.Slice
    dialogueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    dialogueFrame.SliceScale = 0.120
    
    dialogueLabel.Name = "dialogueLabel"
    dialogueLabel.Parent = dialogueFrame
    dialogueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dialogueLabel.BackgroundTransparency = 1.000
    dialogueLabel.Size = UDim2.new(1, 0, 1, 0)
    dialogueLabel.Font = Enum.Font.Oswald
    dialogueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    dialogueLabel.TextScaled = true
    dialogueLabel.TextSize = 14.000
    dialogueLabel.TextWrapped = true
    
    local function npc1dialogue()
        dialogueLabel.Text = "小子你也玩原神吗我们都喜欢玩原神"
        local text = dialogueLabel.Text
        for i = 1, #text do
            dialogueLabel.Text = string.sub(text, 1, i)
            wait(0.05) -- Adjust the speed of the typing effect
        end
    end
local function npc2dialogue()
    dialogueLabel.Text = "向上帝祈祷傻逼东西 "
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function npc3dialogue()
    dialogueLabel.Text = "艹你马，挡着我看电视了让开!"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function luk3dialogue()
    dialogueLabel.Text = "你个傻逼东西还玩迷你世界？"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
local function upiodialogue()
    dialogueLabel.Text = "原神太好玩了我最喜欢玩这个游戏了"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end
civilian1.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
     npc1dialogue()
     wait(2)
     npcdialogue.Enabled = false
end)
civilian2.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    npc2dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
civilian3.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    npc3dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
luk3.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    luk3dialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
upio.ModulePrompt.Triggered:Connect(function()
     npcdialogue.Enabled = true
    upiodialogue()
     wait(2)
    npcdialogue.Enabled = false
end)
easternegg.ModulePrompt.Triggered:Connect(function()
local Equipped = false
local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local eegg = game:GetObjects("rbxassetid://13053427070")[1]
eegg.Parent = game.Players.LocalPlayer.Backpack
    eegg.Equipped:Connect(function()
        Equipped = true
    local Idle = eegg.Animations.idle
    local IdleTrack = Hum:LoadAnimation(Idle)
    IdleTrack:Play()
    end)
    eegg.Unequipped:Connect(function()
        Equipped = false
        IdleTrack:Stop()
    end)
    easternegg:Destroy()
    end)
end)
DOORS:Button("夜视仪", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)
DOORS:Button("rooms自动行走", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DaRealGeo/roblox/master/rooms-autowalk"))()
end)
DOORS:Button("十字架有特效", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/C00LBOZO/0c78ad8c74ca26324c87ede16ce8b387/raw/c0887ac0d24fde80bea11ab1a6a696ec296af272/Crucifix"))();
end)

LLCQ:Toggle("自动比赛开关", false, function(AR)
    while AR do wait()
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
    end
end)
LLCQ:Toggle("自动举哑铃", false, function(ATYL)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATYL do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Weight" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
LLCQ:Toggle("自动俯卧撑", false, function(ATFWC)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATFWC do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Pushups" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
end)
LLCQ:Toggle("自动仰卧起坐", false, function(ATYWQZ)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATYWQZ do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Situps" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
LLCQ:Toggle("自动倒立身体", false, function(ATDL)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while ATDL do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Handstands" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
LLCQ:Toggle("自动锻炼", false, function(ATAAA)
    local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    while ATAAA do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight" then
                v:FindFirstChildOfClass("NumberValue").Value = 0
                repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        end
    end
end)
LLCQ:Toggle("自动重生", false, function(ATRE)
    while ATRE do wait()
        game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
    end
end)
LLCQ:Button("收集宝石", function()
    jk = {}
    for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
        if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
            table.insert(jk, v.Name)
        end
    end
    for i = 1, #jk do
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
    end
end)
LLCQ:Toggle("LS-安全地方", "text",false,function(place)
    if place then
getgenv().place = true
while getgenv().place do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.6716728, 32.2157211, 1290.41211, 0.9945544, 1.23613528e-08, -0.104218982, -7.58742402e-09, 1, 4.62031657e-08, 0.104218982, -4.51608102e-08, 0.9945544)
end
else
getgenv().place = false
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-34.1635208, 3.67689133, 219.640869, 0.599920511, -2.24152163e-09, 0.800059617, 4.46125981e-09, 1, -5.43559087e-10, -0.800059617, 3.89536625e-09, 0.599920511)
    end
end)
LLCQ:Button("传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)
LLCQ:Button("传送到冰霜健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)
LLCQ:Button("传送到神话健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)
LLCQ:Button("传送到永恒健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)
LLCQ:Button("传送到传说健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)
LLCQ:Button("传送到肌肉之王健身房", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)
LLCQ:Button("传送到安全岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)
LLCQ:Button("传送到幸运抽奖区域", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

JYRS:Button("杀死全部", function
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/shasi"))()
end)
JYRS:Button("无敌模式", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/wudi"))()
end)
JYRS:Button("变钢鸡侠", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb2"))()
end)
JYRS:Button("杀死光环", function()
loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))()
end)
JYRS:Seperator("传送位置")
JYRS:Button("传送警卫室", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)
JYRS:Button("传送监狱室内", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)
JYRS:Button("传送罪犯复活点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)
JYRS:Button("传送监狱室外", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

ZDYS:Button("弓箭爆头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
end)

RZCQ:Button("解锁所有岛", function()
    for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
        if v then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
            wait(.5)
        end
    end
end)
RZCQ:Seperator("传送位置")
RZCQ:Button("传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
end)
RZCQ:Button("传送到附魔岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
end)
RZCQ:Button("传送到神秘岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
end)
RZCQ:Button("传送到太空岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
end)
RZCQ:Button("传送到冻土岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
end)
RZCQ:Button("传送到永恒岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
end)
RZCQ:Button("传送到沙暴岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
end)
RZCQ:Button("传送到雷暴岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
end)
RZCQ:Button("传送到远古炼狱岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
end)
RZCQ:Button("传送到午夜暗影岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
end)
RZCQ:Button("传送到神秘灵魂岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
end)
RZCQ:Button("传送到冬季奇迹岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
end)
RZCQ:Button("传送到黄金大师岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
end)
RZCQ:Button("传送到龙传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
end)
RZCQ:Button("传送到赛博传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
end)
RZCQ:Button("传送到天岚超能岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
end)
RZCQ:Button("传送到混沌传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
RZCQ:Button("传送到混沌传奇岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
RZCQ:Button("传送到灵魂融合岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
end)
RZCQ:Button("传送到黑暗元素岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
end)
RZCQ:Button("传送到内心和平岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
end)
RZCQ:Button("传送到炽烈漩涡岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
end)
RZCQ:Button("传送到35倍金币区域", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
end)
RZCQ:Button("传送到死亡宠物", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
end)

HBTX:Seperator("请成为快递员才能自动刷钱!")
HBTX:Toggle("自动刷钱", false, function(AM)
    _G.autoFarm = AM
    if AM then
        autoFarm()
    end
    game.RunService.Stepped:Connect(function()
        local virtualUser = game:GetService('VirtualUser')
        virtualUser:CaptureController()
        function teleportTo(CFrame) 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
        end
        _G.autoFarm = true
        function autoFarm()
            while _G.autoFarm do
                fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
                task.wait(2.2)
                for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do
                    if point.Locate.Locate.Enabled then
                        teleportTo(point.CFrame)
                    end
                end
                task.wait(0)
            end
        end
    end)
end)

XG:Button("显示FPS", function()
    local FpsGui = Instance.new("ScreenGui")
    local FpsXS = Instance.new("TextLabel")
    
    FpsGui.Name = "FPSGui"
    FpsGui.ResetOnSpawn = false
    FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    FpsXS.Name = "FpsXS"
    FpsXS.Size = UDim2.new(0, 100, 0, 50)
    FpsXS.Position = UDim2.new(0, 10, 0, 10)
    FpsXS.BackgroundTransparency = 1
    FpsXS.Font = Enum.Font.SourceSansBold
    FpsXS.Text = "FPS: 0"
    FpsXS.TextSize = 20
    FpsXS.TextColor3 = Color3.new(1, 1, 1)
    FpsXS.Parent = FpsGui
    
    function updateFpsXS()
        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsXS.Text = "FPS: " .. fps
    end
    game:GetService("RunService").RenderStepped:Connect(updateFpsXS)
    FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end)
XG:Button("显示时间",function()
FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("中国标准时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end)
XG:Button("自瞄", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)
XG:Button("范围", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)
XG:Button("iw指令", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
XG:Button("操b脚本", function()
  --Variables
  local SimpleSexGUI = Instance.new("ScreenGui")
  local FGUI = Instance.new("Frame")
  local btnNaked = Instance.new("TextButton")
  local btnSex = Instance.new("TextButton")
  local tbxVictim = Instance.new("TextBox")
  local lblFUCKEMALL = Instance.new("TextLabel")
  local ImageLabel = Instance.new("ImageLabel")
  local lbltitle = Instance.new("TextLabel")
  local TextLabel = Instance.new("TextLabel")
  --Properties
  SimpleSexGUI.Name = "SimpleSexGUI"
  SimpleSexGUI.Parent = game.CoreGui

  FGUI.Name = "FGUI"
  FGUI.Parent = SimpleSexGUI
  FGUI.BackgroundColor3 = Color3.new(255,255,255)
  FGUI.BorderSizePixel = 1
  FGUI.Position = UDim2.new(0,0, 0.667, 0)
  FGUI.Size = UDim2.new(0,317, 0,271)
  FGUI.Draggable = true

  lbltitle.Name = "Title"
  lbltitle.Parent = FGUI
  lbltitle.BackgroundColor3 = Color3.new(255,255,255)
  lbltitle.BorderSizePixel = 1
  lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
  lbltitle.Size = UDim2.new (0, 317,0, 33)
  lbltitle.Visible = true
  lbltitle.Active = true
  lbltitle.Draggable = false
  lbltitle.Selectable = true
  lbltitle.Font = Enum.Font.SourceSansBold
  lbltitle.Text = "一个简单的操蛋脚本!!"
  lbltitle.TextColor3 = Color3.new(0, 0, 0)
  lbltitle.TextSize = 20

  btnSex.Name = "Sex"
  btnSex.Parent = FGUI
  btnSex.BackgroundColor3 = Color3.new(255,255,255)
  btnSex.BorderSizePixel = 1
  btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
  btnSex.Size = UDim2.new (0, 99,0, 31)
  btnSex.Visible = true
  btnSex.Active = true
  btnSex.Draggable = false
  btnSex.Selectable = true
  btnSex.Font = Enum.Font.SourceSansBold
  btnSex.Text = "让我们操蛋吧!!"
  btnSex.TextColor3 = Color3.new(0, 0, 0)
  btnSex.TextSize = 20

  tbxVictim.Name = "VictimTEXT"
  tbxVictim.Parent = FGUI
  tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
  tbxVictim.BorderSizePixel = 1
  tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
  tbxVictim.Size = UDim2.new (0, 133,0, 27)
  tbxVictim.Visible = true
  tbxVictim.Active = true
  tbxVictim.Draggable = false
  tbxVictim.Selectable = true
  tbxVictim.Font = Enum.Font.SourceSansBold
  tbxVictim.Text = "名字"
  tbxVictim.TextColor3 = Color3.new(0, 0, 0)
  tbxVictim.TextSize = 20

  lblFUCKEMALL.Name = "FUCKEMALL"
  lblFUCKEMALL.Parent = FGUI
  lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
  lblFUCKEMALL.BorderSizePixel = 1
  lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
  lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
  lblFUCKEMALL.Visible = true
  lblFUCKEMALL.Font = Enum.Font.SourceSansBold
  lblFUCKEMALL.Text = "操蛋和操蛋"
  lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
  lblFUCKEMALL.TextSize = 20

  ImageLabel.Name = "ImageLabel"
  ImageLabel.Parent = FGUI
  ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
  ImageLabel.BorderSizePixel = 1
  ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
  ImageLabel.Size = UDim2.new (0, 106,0, 121)
  --Scripts
  btnSex.MouseButton1Click:Connect(function()
    local player = tbxVictim.Text
    local stupid = Instance.new('Animation')
    stupid.AnimationId = 'rbxassetid://148840371'
    hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
    pcall(function()
      hummy.Parent.Pants:Destroy()
    end)
    pcall(function()
      hummy.Parent.Shirt:Destroy()
    end)
    local notfunny = hummy:LoadAnimation(stupid)
    notfunny:Play()
    notfunny:AdjustSpeed(10)
    while hummy.Parent.Parent ~= nil do
      wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
    end
  end)
end)

LS:Toggle("在水上行走", "ToggleInfo", false, function(AHJ)
 if AHJ == false then do game.Workspace.WaterLevel.CanCollide = false
                            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
                        end
                    end
                    if AHJ == true then do game.Workspace.WaterLevel.CanCollide = true
                            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
        end
    end
end)
LS:Toggle("自动禁用掉落伤害", false, function(AJH)
    _G.NoFallDamage = AJH;
    while wait(0.5) do
        if _G.NoFallDamage == true then
            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
            if FallDamageScript then
                FallDamageScript:Destroy()
            end
        end
    end
end)

XC:Button("小凌脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling1.4-Script/main/%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC%E5%B0%8F%E5%87%8C%E8%84%9A%E6%9C%AC.Lua"))()
end)
XC:Button("导管中心", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)
XC:Button("云中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E4%BA%91%E4%B8%AD%E5%BF%83CLOUD-HUB.lua", true))()
end)
XC:Button("XSC卡密x", function()
    getgenv().XC="作者XC"
    loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
end)
XC:Button("情云", function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,46,108,117,97,34,41,41,40,41})end)()))()
end)
LQ:Button("动态模糊", function()
    local camera = workspace.CurrentCamera
    local blurAmount = 10
    local blurAmplifier = 5
    local lastVector = camera.CFrame.LookVector
    local motionBlur = Instance.new("BlurEffect", camera)
    local runService = game:GetService("RunService")
    workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        local camera = workspace.CurrentCamera
        if motionBlur and motionBlur.Parent then
            motionBlur.Parent = camera
        else
            motionBlur = Instance.new("BlurEffect", camera)
        end
    end)
    runService.Heartbeat:Connect(function(deltaTime)
        local magnitude = (camera.CFrame.LookVector - lastVector).Magnitude
        motionBlur.Size = math.abs(magnitude) * blurAmount * blurAmplifier / 2
        lastVector = camera.CFrame.LookVector
    end)
end)

LQ:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end)
LQ:Button("美丽天空", function()
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
      v:Destroy()
    end

    local ter = workspace.Terrain
    local color = Instance.new("ColorCorrectionEffect")
    local bloom = Instance.new("BloomEffect")
    local sun = Instance.new("SunRaysEffect")
    local blur = Inst
  end)
LQ:Button("超高画质", function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)
LQ:Button("光影v4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)