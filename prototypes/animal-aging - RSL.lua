
--  adds infant and juvenile animal variations, spoiling to animals, sets stack limits to 1, and mods breeding recipes


data:extend(
    {
        {
            type = "item",
            name = "bull",
			localised_name = {"item-name.bull"},
            icon = "__baketorio__/graphics/cow.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 10*hour,
			spoil_result = nil,
			--spoil_result = "coal",
        },
		--[[
        {
            type = "item",
            name = "calf",
			localised_name = {"item-name.calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			--spoil_ticks = 30*minute,
			spoil_ticks = 0.5*minute,
			--spoil_result = "cow",
			spoil_to_trigger_result =
			{
				items_per_trigger = 1,
				trigger = calf_effect
			}
		},
		]]
        {
            type = "item",
            name = "baby-calf",
			localised_name = {"item-name.baby-calf"},
            icon = "__baketorio_plus__/graphics/calf.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 1,
			flags = {"not-stackable"},
			spoil_ticks = 1,
			spoil_result = "calf",
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
	}
)
		
data.raw["item"]["cow"].spoil_ticks = 8*hour
data.raw["item"]["cow"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
--table.insert(data.raw["item"]["cow"].flags, "not-stackable")
data.raw["item"]["cow"].flags = {"not-stackable"}
--data.raw["item"]["cow"].spoil_result = nil
data.raw["item"]["cow"].spoil_result = "coal"
data.raw["item"]["chicken"].spoil_ticks = 4*hour
data.raw["item"]["chicken"].spoil_ticks = 2*minute
data.raw["item"]["chicken"].stack_size = 1  --  needs to be set for it to be allowed to be unstackable
--table.insert(data.raw["item"]["chicken"].flags, "not-stackable")
data.raw["item"]["chicken"].flags = {"not-stackable"}
--data.raw["item"]["chicken"].spoil_result = nil
data.raw["item"]["chicken"].spoil_result = "coal"
		
data.raw["recipe"]["breed-cow-recipe"].ingredients = {
                {type="item",name="cow",amount=1},
                {type="item",name="bull",amount=1},
                {type="item",name="nutrient2",amount=10}
            }
data.raw["recipe"]["breed-cow-recipe"].results = {
                {type="item",name="cow",amount=1},
                {type="item",name="bull",amount=1},
                {type="item",name="baby-calf",amount=1}
			}
data.raw["recipe"]["chicken-recipe-egg"].results = {
                {type="item",name="chick",amount=1,probability=0.25}  --  no need for baby-chick because eggs don't have spoilage (will need to add back if that is added)
			}

--  set initial creation recipes to give children (needed so that calf can become a bull possibly), but half spoiled (so the wait isn't as long)
data.raw["recipe"]["chicken-recipe"].results = {
                {type="item",name="chick",amount=1,percent_spoiled=0.5}
			}
data.raw["recipe"]["cow-recipe"].results = {
                {type="item",name="calf",amount=1,percent_spoiled=0.5}
			}
		
		
		
		
		
		
		
		
