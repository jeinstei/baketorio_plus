local prod_recipes = {
  "wood-frame-recipe",
  "wood-ground-recipe",
  "wood-pulp-recipe",
  "wood-paper-recipe",
  "paper-wrapper-recipe",
}

for _, v in ipairs(prod_recipes) do
	baketorio.add_to_prod_mod(v)
end


data:extend(
    {
        {
            type = "item",
            name = "wood-frame",
            icon = "__baketorio_plus__/graphics/wood-frame.png",
            icon_size = 32,
			group = "wood",
			subgroup = "wood",
            stack_size = 50
        },
        {
            type = "item",
            name = "wood-ground",
            icon = "__baketorio_plus__/graphics/wood-ground.png",
            icon_size = 32,
			group = "wood",
			subgroup = "wood",
            stack_size = 50,
			fuel_category = "chemical",
            fuel_value = "100kJ"
        },
        {
            type = "fluid",
            name = "wood-pulp",
            icon = "__baketorio_plus__/graphics/wood-pulp.png",
            icon_size = 32,
			group = "wood",
			subgroup = "wood",
            default_temperature = 25,
            heat_capacity = "0.1kJ",
            base_color = {r = 0.78, g = 0.69, b = 0.24},
            flow_color = {r = 0.78, g = 0.69, b = 0.24},
            max_temperature = 100,
        },
        {
            type = "item",
            name = "paper",
            icon = "__baketorio_plus__/graphics/paper.png",
            icon_size = 32,
			group = "wood",
			subgroup = "wood",
            stack_size = 100,
			fuel_category = "chemical",
            fuel_value = "10kJ"
        },
        {
            type = "item",
            name = "paper-wrapper",
            icon = "__baketorio_plus__/graphics/paper-wrapper.png",
            icon_size = 32,
			group = "wood",
			subgroup = "wood",
            stack_size = 200,
			fuel_category = "chemical",
            fuel_value = "2.5kJ"
        },
		
		
        {
            type = "recipe",
            name = "wood-frame-recipe",
			localised_name = {"item-name.wood-frame"},
            category = "crafting",
            energy_required = 3,
            enabled = false,
            ingredients = {
                {type="item",name="wood",amount=1},
                {type="item",name="copper-cable",amount=3},
            },
            results = {
                {type="item", name="wood-frame", amount=4},
            }
        },
        {
            type = "recipe",
            name = "wood-ground-recipe",
			localised_name = {"item-name.wood-ground"},
            category = "advanced-crafting",
            energy_required = 2,
            enabled = false,
            ingredients = {
                {type="item",name="wood",amount=1},
            },
            results = {
                {type="item", name="wood-ground", amount=3},
            }
        },
        {
            type = "recipe",
            name = "wood-pulp-recipe",
			localised_name = {"item-name.wood-pulp"},
            category = "chemistry",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {type="fluid",name="water",amount=30},
                {type="item",name="wood-ground",amount=4},
            },
            results = {
                {type="fluid", name="wood-pulp", amount=35},
            }
        },
        {
            type = "recipe",
            name = "wood-paper-recipe",
			localised_name = {"item-name.paper"},
            category = "crafting-with-fluid",
            energy_required = 20,
			group = "wood",
			subgroup = "wood",
            enabled = false,
            ingredients = {
                {type="fluid",name="wood-pulp",amount=100},
                {type="item",name="wood-frame",amount=30},
            },
            results = {
                {type="item", name="paper", amount=30},
                {type="item",name="wood-frame",amount_min=28,amount_max=30},
            },
            icon = "__baketorio_plus__/graphics/paper.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "paper-wrapper-recipe",
			localised_name = {"item-name.paper-wrapper"},
            category = "crafting",
            energy_required = 0.5,
            enabled = false,
            ingredients = {
                {type="item",name="paper",amount=1},
            },
            results = {
                {type="item", name="paper-wrapper", amount=4},
            }
        },
	}
)