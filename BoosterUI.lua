-- BoosterUI.lua
-- Main UI handler for booster pack functionality

local TextEffect = require(script.Parent.TextEffect)

local BoosterUI = {}

-- Sample booster data structure
local boosterData = {
    price = 5.99,
    name = "Standard Booster Pack",
    cardCount = 5
}

-- Function to handle card click events (referenced in problem statement)
local function onCardClicked(card)
    local price = card.price or 1.0
    local size = math.max(24, math.min(48, price * 4)) -- Dynamic size calculation
    
    TextEffect.createTextEffect("+ $" .. string.format("%.2f", price), {
        size = size,
        font = Enum.Font.Arcade,
        color = Color3.new(0, 1, 0),
        strokeColor = Color3.new(0, 0.345098, 0),
    })
end

-- Main function to toggle booster UI
function BoosterUI.toggleBoosterUI(isVisible)
    -- Core UI logic (not to be modified per requirements)
    if isVisible then
        print("Showing booster UI")
        -- UI display logic here
        
        -- Add TextEffect to display money earned by the booster pack
        local price = boosterData.price
        local size = math.max(24, math.min(48, price * 4)) -- Dynamic size calculation similar to onCardClicked
        
        TextEffect.createTextEffect("+ $" .. string.format("%.2f", price), {
            size = size,
            font = Enum.Font.Arcade, 
            color = Color3.new(0, 1, 0),
            strokeColor = Color3.new(0, 0.345098, 0),
        })
    else
        print("Hiding booster UI")
        -- UI hide logic here
    end
    
    -- Additional booster-related functionality
end

return BoosterUI