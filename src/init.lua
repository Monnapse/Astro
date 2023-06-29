--// Packages
local Roact = require(script.Packages.roact)

local astro = {
    SurfaceGui = require(script.surfacegui),
    Button = require(script.button)
}
astro.__index = astro

astro.roact = Roact

return astro