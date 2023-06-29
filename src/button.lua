--// Packages
local Roact = require(script.Parent.Packages.roact)

local Button = Roact.Component:extend("Button")

function Button:init()
	self:setState({
        elementFlag = true
    })
end

function Button:render()
    if self.state.elementFlag then
        return Roact.createElement("TextButton",{
            Size = UDim2.new(0,200,0,50),
            Text = "Click me!",
            [Roact.Event.Activated] = function()
                self:setState({
                    elementFlag = false
                })
                task.wait(2)
                self:setState({
                    elementFlag = true
                })
            end
        })
    else
        return Roact .createElement("TextLabel",{
            Size = UDim2.new(0,200,0,50),
            Text = "Please Wait..."
        })
    end
    
end

return Button