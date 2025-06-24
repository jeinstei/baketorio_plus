
--  adds infant and juvenile animal variations, spoiling to animals, sets stack limits to 1, and mods breeding recipes


data:extend(
    {
        {
            type = "item",
            name = "bull",
			localised_name = {"item-name.bull"},
            icon = "__baketorio_plus__/graphics/bull.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 10*hour,
			spoil_result = nil,
			--spoil_result = "coal",
        },
        {
            type = "item",
            name = "calf-bull",
			localised_name = {"item-name.calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 30*minute,
			spoil_result = "bull",
		},
        {
            type = "item",
            name = "calf-cow",
			localised_name = {"item-name.calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 30*minute,
			spoil_result = "cow",
		},
        {
            type = "item",
            name = "baby-calf-bull",
			localised_name = {"item-name.baby-calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 2,
			spoil_result = "calf-bull",
        },
        {
            type = "item",
            name = "baby-calf-cow",
			localised_name = {"item-name.baby-calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 2,
			spoil_result = "calf-cow",
        },
        {
            type = "item",
            name = "chick",
			localised_name = {"item-name.chick"},
            icon = "__baketorio_plus__/graphics/chick.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 15*minute,
			spoil_result = "chicken"
        },
		
		
		--  pigs
        {
            type = "item",
            name = "boar",
			localised_name = {"item-name.boar"},
            icon = "__baketorio_plus__/graphics/boar.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 10*hour,
			spoil_result = nil,
        },
        {
            type = "item",
            name = "piglet-boar",
			localised_name = {"item-name.piglet"},
            icon = "__baketorio_plus__/graphics/piglet.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.75*hour,
			spoil_result = "boar"
        },
        {
            type = "item",
            name = "piglet-pig",
			localised_name = {"item-name.piglet"},
            icon = "__baketorio_plus__/graphics/piglet.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.75*hour,
			spoil_result = "pig"
        },
        {
            type = "item",
            name = "baby-piglet-pig",
			localised_name = {"item-name.baby-piglet"},
            icon = "__baketorio_plus__/graphics/piglet.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 1,
			spoil_result = "piglet-pig",
        },
        {
            type = "item",
            name = "baby-piglet-boar",
			localised_name = {"item-name.baby-piglet"},
            icon = "__baketorio_plus__/graphics/piglet.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 1,
			spoil_result = "piglet-boar",
        },
		
		
		--  sheep
        {
            type = "item",
            name = "ram",
			localised_name = {"item-name.ram"},
            icon = "__baketorio_plus__/graphics/ram.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 10*hour,
			spoil_result = nil,
        },
        {
            type = "item",
            name = "lamb-ram",
			localised_name = {"item-name.lamb"},
            icon = "__baketorio_plus__/graphics/lamb.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.75*hour,
			spoil_result = "ram"
        },
        {
            type = "item",
            name = "lamb-sheep",
			localised_name = {"item-name.lamb"},
            icon = "__baketorio_plus__/graphics/lamb.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.75*hour,
			spoil_result = "sheep"
        },
        {
            type = "item",
            name = "baby-lamb-sheep",
			localised_name = {"item-name.baby-lamb"},
            icon = "__baketorio_plus__/graphics/lamb.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 1,
			spoil_result = "lamb-sheep",
        },
        {
            type = "item",
            name = "baby-lamb-ram",
			localised_name = {"item-name.baby-lamb"},
            icon = "__baketorio_plus__/graphics/lamb.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 1,
			spoil_result = "lamb-ram",
        },
		
		--  not used due to the fact it would reset the lifespan
		--[[
        {
            type = "item-with-tags",
            name = "sheep-shaved",
			localised_name = {"item-name.sheep-shaved"},
            icon = "__baketorio_plus__/graphics/sheep-shaved.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.25*hour,
			--spoil_result = sheep,
			spoil_result = nil,
        },
        {
            type = "item",
            name = "ram-shaved",
			localised_name = {"item-name.ram-shaved"},
            icon = "__baketorio_plus__/graphics/ram-shaved.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 0.25*hour,
			spoil_result = ram,
        },
		]]
	}
)
		
data.raw["item"]["cow"].spoil_ticks = 8*hour
data.raw["item"]["cow"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
--table.insert(data.raw["item"]["cow"].flags, "not-stackable")
data.raw["item"]["cow"].flags = {"not-stackable"}
data.raw["item"]["cow"].spoil_result = nil

data.raw["item"]["chicken"].spoil_ticks = 4*hour
data.raw["item"]["chicken"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
--table.insert(data.raw["item"]["chicken"].flags, "not-stackable")
data.raw["item"]["chicken"].flags = {"not-stackable"}
data.raw["item"]["chicken"].spoil_result = nil
		
data.raw["recipe"]["breed-cow-recipe"].ingredients = {
                {type="item",name="cow",amount=1},
                {type="item",name="bull",amount=1},
                {type="item",name="nutrient2",amount=10}
            }
data.raw["recipe"]["breed-cow-recipe"].results = {
                {type="item",name="cow",amount=1},
                {type="item",name="bull",amount=1},
                {type="item",name="baby-calf-cow",amount=1,probability=0.9},
                {type="item",name="baby-calf-bull",amount=1,probability=0.1}
			}
data.raw["recipe"]["chicken-recipe-egg"].results = {
                {type="item",name="chick",amount=1,probability=0.25}  --  no need for baby-chick because eggs don't have spoilage (will need to add back if that is added)
			}

--  set initial creation recipes to give children (needed so that calf can become a bull possibly), but half spoiled (so the wait isn't as long)
data.raw["recipe"]["chicken-recipe"].results = {
                {type="item",name="chick",amount=1,percent_spoiled=0.5}
			}
data.raw["recipe"]["cow-recipe"].results = {
                {type="item",name="calf-cow",amount=1,percent_spoiled=0.5,probability=0.9},
                {type="item",name="calf-bull",amount=1,percent_spoiled=0.5,probability=0.1}
			}
		
		
		--  pigs
data.raw["item"]["pig"].localised_name = {"item-name.sow"}
data.raw["item"]["pig"].spoil_ticks = 10*hour
data.raw["item"]["pig"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
data.raw["item"]["pig"].flags = {"not-stackable"}
data.raw["item"]["pig"].spoil_result = nil
			
		
data.raw["recipe"]["breed-pig-recipe"].ingredients = {
                {type="item",name="pig",amount=1},
                {type="item",name="boar",amount=1},
                {type="item",name="nutrient3",amount=5}
            }
data.raw["recipe"]["breed-pig-recipe"].results = {
                {type="item",name="pig",amount=1},
                {type="item",name="boar",amount=1},
                {type="item",name="baby-piglet-pig",amount=1,probability=0.5},
                {type="item",name="baby-piglet-boar",amount=1,probability=0.5}
			}
			
data.raw["recipe"]["pig-recipe"].results = {
                {type="item",name="piglet-pig",amount=1,percent_spoiled=2/3,probability=0.5},
                {type="item",name="piglet-boar",amount=1,percent_spoiled=2/3,probability=0.5}
			}
		
		
		--  sheep
data.raw["item"]["sheep"].localised_name = {"item-name.ewe"}
data.raw["item"]["sheep"].spoil_ticks = 10*hour
data.raw["item"]["sheep"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
data.raw["item"]["sheep"].flags = {"not-stackable"}
data.raw["item"]["sheep"].spoil_result = nil
			
		
data.raw["recipe"]["breed-sheep-recipe"].ingredients = {
                {type="item",name="sheep",amount=1},
                {type="item",name="ram",amount=1},
                {type="item",name="nutrient1",amount=10}
            }
data.raw["recipe"]["breed-sheep-recipe"].results = {
                {type="item",name="sheep",amount=1},
                {type="item",name="ram",amount=1},
                {type="item",name="baby-lamb-sheep",amount=1,probability=0.5},
                {type="item",name="baby-lamb-ram",amount=1,probability=0.5}
			}
			
data.raw["recipe"]["sheep-recipe"].results = {
                {type="item",name="lamb-sheep",amount=1,percent_spoiled=2/3,probability=0.5},
                {type="item",name="lamb-ram",amount=1,percent_spoiled=2/3,probability=0.5}
			}
			
		
local woolEnergy = data.raw["recipe"]["wool-water-recipe"].energy_required;

		--  Add male versions for recipes (will need to add to techs as well, after the tech and wrapped in a spoilage check)
data:extend(
    {
		{
			type = "recipe",
			name = "beef-bull-recipe",
			localised_name = {"item-name.beef"},
			category = "butcher",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="bull",amount=1},
                {type="item",name="plastic-bin",amount=4}
			},
			results = {{type="item", name="beef", amount=4}}
		},
		{
			type = "recipe",
			name = "pork-boar-recipe",
			localised_name = {"item-name.pork"},
			category = "butcher",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="boar",amount=1},
                {type="item",name="plastic-bin",amount=5}
			},
			results = {
				{type="item", name="pork", amount=5},
				{type="fluid", name="gelatin", amount=50}
			},
            icon = "__baketorio_plus__/graphics/pork.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "mutton-ram-recipe",
			localised_name = {"item-name.mutton"},
			category = "butcher",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="ram",amount=1},
                {type="item",name="plastic-bin",amount=3}
			},
			results = {
				{type="item", name="mutton", amount=3}
			},
		},
		
	--  ram shearing recipes
        {
            type = "recipe",
            name = "wool-ram-recipe",
            localised_name = {"item-name.wool"},
            category = "greenhouse-recipes",
            subgroup = "ingredient",
            energy_required = woolEnergy*3,
            enabled = false,
            ingredients ={
                {type="item",name="ram",amount=1},
                {type="item",name="nutrient1",amount=1}
            },
            results = {
                {type="item",name="ram",amount=1},
                --{type="item",name="ram-shaved",amount=1},
                {type="item", name="wool", amount=1},
            },
            icon = "__baketorio__/graphics/unpasteurized_milk.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "wool-ram-water-recipe",
            localised_name = {"item-name.wool"},
            category = "greenhouse-recipes",
            subgroup = "ingredient",
            energy_required = woolEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="ram",amount=1},
                {type="item",name="nutrient1",amount=1},
                {type="fluid",name="water",amount=20}
            },
            results = {
                {type="item",name="ram",amount=1},
                --{type="item",name="ram-shaved",amount=1},
                {type="item", name="wool", amount=1},
            },
            icon = "__baketorio__/graphics/unpasteurized_milk.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "wool-ram-water-food-recipe",
            localised_name = {"item-name.wool"},
            category = "greenhouse-recipes",
            subgroup = "ingredient",
            energy_required = woolEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="ram",amount=1},
                {type="item",name="nutrient1",amount=2},
                {type="item",name="wheat",amount=5},
                {type="fluid",name="water",amount=20}
            },
            results = {
                {type="item",name="ram",amount=1},
                --{type="item",name="ram-shaved",amount=1},
                {type="item", name="wool", amount=3},
            },
            icon = "__baketorio__/graphics/unpasteurized_milk.png",
            icon_size = 32,
        },
	}
)
	
	
--[[
	--  manage saving of lifespan spoilage of sheep as they are turned into shaved sheep
script.on_event(defines.events.on_tick, function(event)
  --  check if recipe is completed for wool
  --  ...hijack the recipe by saving the spoilage of the input sheep
  --  set it as a saved value with the id of the new shaved sheep for on_entity_destroyed to reference later?
end)
]]	
		
		
		
		
		
