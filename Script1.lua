local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Klupp UI", colors)
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(50, 34, 60),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewDropdown("Give items (BETA)", "Self Explanatory", {"Press To Get Items"}, function(currentOption)
    print(currentOption)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver.M9.ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Key card"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver.M4A1
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
end)

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
PlayerSection:NewSlider("Walkspeed", "Self Explanatory", 250, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
PlayerSection:NewSlider("Jumppower", "Self Explanatory", 250, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)


local Mods = Window:NewTab("Mods")
local ModsSection = Mods:NewSection("Mods")
ModsSection:NewDropdown("Gun Mod", "YOUR SO FUCKING STUPID I SWEAR", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 0
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)

local Credit = Window:NewTab("Credit")
local CreditSection = Credit:NewSection("Designer - Klupp")
local CreditSection = Credit:NewSection("Script Maker - Klupp")
local CreditSection = Credit:NewSection("Best - Klupp")
local CreditSection = Credit:NewSection("BEST BEST BEST BEST BEST Server - .gg/floppatools")
local CreditSection = Credit:NewSection("Basically Everything - Klupp")

local Info = Window:NewTab("Info")
local InfoSection = Info:NewSection("Keybinds")
InfoSection:NewKeybind("UI Toggle", "bongo is cool", Enum.KeyCode.V, function()
    Library:ToggleUI()
end)

local Customize = Window:NewTab("Customize")
local CustomizeSection = Customize:NewSection("Customize")
CustomizeSection:NewColorPicker("Colorize The Text", "Literally In The Text", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

