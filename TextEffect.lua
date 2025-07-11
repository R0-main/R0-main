-- TextEffect.lua
-- Module for creating text effects in the UI

local TextEffect = {}

-- Function to create text effects
function TextEffect.createTextEffect(text, options)
    local size = options.size or 24
    local font = options.font or Enum.Font.SourceSans
    local color = options.color or Color3.new(1, 1, 1)
    local strokeColor = options.strokeColor or Color3.new(0, 0, 0)
    
    print(string.format("Creating text effect: '%s' with size %d", text, size))
    print(string.format("Font: %s, Color: (%.2f, %.2f, %.2f)", 
        tostring(font), color.R, color.G, color.B))
    print(string.format("Stroke Color: (%.2f, %.2f, %.2f)", 
        strokeColor.R, strokeColor.G, strokeColor.B))
    
    -- In a real implementation, this would create and display the text effect
    -- For now, we'll just log the parameters
    
    return {
        text = text,
        size = size,
        font = font,
        color = color,
        strokeColor = strokeColor
    }
end

return TextEffect