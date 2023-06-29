--// Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local PlayerGui = Players.LocalPlayer.PlayerGui

--// Packages
local ASTRO = require(ReplicatedStorage.ASTRO)
local Roact = ASTRO.roact

--function Interface(props)
--    return Roact.createElement("ScreenGui",{},{
--        Label = Roact.createElement("TextLabel",props,props[Roact.Children])
--    })
--end
--
--local interface = Roact.createElement("ScreenGui", {
--    Text = "Hello, Roact",
--    Size = UDim2.new(0,200,0,50),
--})
--
--Roact.mount(interface, game.Players.LocalPlayer.PlayerGui)

interface = Roact.createElement(ASTRO.SurfaceGui)

Roact.mount(interface,PlayerGui)