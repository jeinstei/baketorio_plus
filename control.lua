
-- Make sure nutrient1 isn't researched by default
script.on_init(function()
    for _,tech in pairs(game.forces['player'].technologies) do
        if (tech.enabled and tech.name == "nutrient1") then
            tech.researched = false
            break
        end
    end
    game.forces['player'].reset_technology_effects()
end)