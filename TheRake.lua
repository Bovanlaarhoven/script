local esp = Instance.new("Highlight")
local oldfog
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "The Rake",
    LoadingTitle = "Hydra Network",
    LoadingSubtitle = "by hydra#8270",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "YvwEyH2W6t",
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = "Hello"
    }
 })
 
local Tab = Window:CreateTab("Main", 4483362458)

local Toggle = Tab:CreateToggle({
    Name = "No Fog",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            if game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value then
                oldfog = game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value
                game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = math.huge
            else
                oldfog = game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value
                game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = oldfog
            end
        else
            if oldfog then
                if game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value then
                    game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = oldfog
                else
                    game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = oldfog
                end
            end
        end
    end,
 })

local Slider = Tab:CreateSlider({
    Name = "Brithness",
    Range = {0, 10},
    Increment = 10,
    Suffix = "Value",
    CurrentValue = 1,
    Flag = "Slider1",
    Callback = function(Value)
        game:GetService("ReplicatedStorage").CurrentLightingProperties.Brightness.Value = Value
    end,
})

 local Button = Tab:CreateButton({
    Name = "Rake esp",
    Callback = function()
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Rake" then
                esp.Parent = v
                esp.Adornee = v
                esp.Color = Color3.fromRGB(255, 0, 0)
                esp.Transparency = 0.5
            end
        end
    end,
 })



local Keybind = Tab:CreateKeybind({
    Name = "Give 100 stamina",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
        for i,v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "stamina") then
                v.stamina = 100
            end
        end
    end,
 })

local Label = Tab:CreateLabel(" Left")

while wait() do
    Label:Set(game:GetService("ReplicatedStorage").Timer.Value .. " Left")
end

 