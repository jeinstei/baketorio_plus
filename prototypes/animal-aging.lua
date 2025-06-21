
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
		
		
        {
            type = "item",
            name = "boar",
			localised_name = {"item-name.boar"},
            icon = "__baketorio_plus__/graphics/boar.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 12*hour,
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
                {type="item",name="baby-piglet-pig",amount=1,probability=0.9},
                {type="item",name="baby-piglet-boar",amount=1,probability=0.1}
			}
			
data.raw["recipe"]["pig-recipe"].results = {
                {type="item",name="piglet-pig",amount=1,percent_spoiled=2/3,probability=0.9},
                {type="item",name="piglet-boar",amount=1,percent_spoiled=2/3,probability=0.1}
			}
		
		
		
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
		}
	}
)
		
		
		
		
		
		
		
