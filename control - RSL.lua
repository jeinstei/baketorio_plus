--[[
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
]]


local function call_remote()
	remote.call("rsl_registry", "register_rsl_definition", "calf", {
		mode = { random = true, conditional = false, weighted = true },
		condition = true,
		possible_results = {
			[true] = {
						{ name = "bull", weight = 1}, { name = "cow", weight = 9}
					  },
			[false] = {}
			}
		}
	)
end


script.on_init(function()
	if feature_flags["spoiling"] then
		call_remote()
	end
	
	-- Make sure nutrient1 isn't researched by default
    for _,tech in pairs(game.forces['player'].technologies) do
        if (tech.enabled and tech.name == "nutrient1") then
            tech.researched = false
            break
        end
    end
    game.forces['player'].reset_technology_effects()
end)


script.on_configuration_changed(function()
	if feature_flags["spoiling"] then
		call_remote()
	end
end)