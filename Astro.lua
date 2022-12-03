--[[

	Astro
	Made by Monnapse#7578
	
	Astro is a Modern UI library

--]]

--// Directories
local Elements = script.Elements

local astro = {}

function astro.new()
	local self = {}

	self.Elements             = {}
	self.Elements.TextButton  = require(Elements.Button).text
	self.Elements.ImageButton = require(Elements.Button).text
	
	--// Directories
	self.GUI = Instance.new("ScreenGui")
	
	--// Elements Creating
	function self:CreateElement(Element)
		Element()
	end
	
	return self
end

return astro
