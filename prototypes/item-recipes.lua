-- Add recipe names here to add them to productivity modules
local prod_recipes = {
  "bake-burner-boiler-recipe",
  "bake-electric-boiler-recipe",
  "butterizer-recipe",
  "butcher-recipe",
  "plastic-bin-recipe",
  "plastic-basket-recipe",
  "bushel-basket-recipe",
  "metal-bucket-recipe",
  "filter-nuts",
  "filter-nuts-for-almonds",
  "filter-nuts-for-pistachios",
  "filter-nuts-for-pecans",
  "filter-nuts-for-peanuts",
  "peanut-butter-recipe",
  "pumpkin-pulp-recipe",
  "slightly-buttered-dough-recipe",
  "pretty-buttered-dough-recipe",
  "fairly-buttered-dough-recipe",
  "very-buttered-dough-recipe",
  "incredibly-buttered-dough-recipe",
  "extremely-buttered-dough-recipe",
  "fully-buttered-dough-recipe",
  "cocoa-butter-recipe",
  "croissant-cooked-recipe",
  "chocolate-chip-croissant-cooked-recipe",
  "chocolate-chip-buttered-dough-recipe",
  "chocolate-chip-croissant-cooked-white-drizzle-recipe",
  "chocolate-ice-cream-recipe",
  "strawberry-ice-cream-recipe",
  "neapolitan-ice-cream-recipe",
  "ice-cream-sundae-recipe",
  "pancake-batter-recipe",
  "pancake-cooked-recipe",
  "pancake-with-syrup-recipe",
  "pie-tin-recipe",
  "filo-dough-recipe",
  "baklava-recipe",
  "baklava-cooked-recipe",
  "pumpkin-batter-recipe",
  "pumpkin-cookie-recipe",
  "pumpkin-cookie-cooked-recipe",
  "pumpkin-cookie-glazed-recipe",
  "pecan-pie-recipe",
  "pecan-pie-cooked-recipe",
  "pig-recipe",
  "breed-pig-recipe",
  "beef-recipe",
  "pork-recipe",
  "chicken-recipe",
  "meat-pie-recipe",
  "meat-pie-cooked-recipe",
  "chicken-pot-pie-recipe",
  "chicken-pot-pie-cooked-recipe",
  "sausage-roll-recipe",
  "sausage-roll-cooked-recipe",
}

for _, v in ipairs(prod_recipes) do
	baketorio.add_to_prod_mod(v)
end

data:extend(
    {
		{
			type = "recipe",
			name = "bake-burner-boiler-recipe",
			localised_name = {"item-name.bake-burner-boiler"},
			enabled = false,
			ingredients = {
				{type = "item", name = "iron-plate", amount = 1},
				{type = "item", name = "pipe", amount = 5},
				{type = "item", name = "copper-cable", amount = 30},
				{type = "item", name = "concrete", amount = 10}
			},
			results = {{type="item", name="bake-burner-boiler", amount=1}}
		},
		{
			type = "recipe",
			name = "bake-electric-boiler-recipe",
			localised_name = {"item-name.bake-electric-boiler"},
			enabled = false,
			ingredients = {
				{type = "item", name = "bake-burner-boiler", amount = 1},
				{type = "item", name = "advanced-circuit", amount = 4}
			},
			results = {{type="item", name="bake-electric-boiler", amount=1}}
		},
		
		{
			type = "recipe",
			name = "butterizer-recipe",
			localised_name = {"item-name.butterizer"},
			enabled = false,
			ingredients = {
				{type = "item", name = "barrel", amount = 1},
				{type = "item", name = "wood", amount = 10},
				{type = "item", name = "advanced-circuit", amount = 3},
				{type = "item", name = "iron-plate", amount = 30},
			},
			results = {{type="item", name="butterizer", amount=1}}
		},
		
		{
			type = "recipe",
			name = "butcher-recipe",
			localised_name = {"item-name.butcher"},
			enabled = false,
			ingredients = {
				{type = "item", name = "wood", amount = 25},
				{type = "item", name = "iron-plate", amount = 10},
				{type = "item", name = "steel-plate", amount = 5},
			},
			results = {{type="item", name="butcher", amount=1}}
		},
		
		{
			type = "recipe",
			name = "plastic-bin-recipe",
			localised_name = {"item-name.plastic-bin"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "plastic-bar", amount = 1}},
			results = {{type="item", name="plastic-bin", amount=1}}
		},
		{
			type = "recipe",
			name = "metal-bucket-recipe",
			localised_name = {"item-name.metal-bucket"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "iron-plate", amount = 1}},
			results = {{type="item", name="metal-bucket", amount=1}}
		},
		{
			type = "recipe",
			name = "plastic-basket-recipe",
			localised_name = {"item-name.plastic-basket"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "plastic-bar", amount = 1}},
			results = {{type="item", name="plastic-basket", amount=3}}
		},
		{
			type = "recipe",
			name = "pie-tin-recipe",
			localised_name = {"item-name.pie-tin"},
			category = "crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {{type = "item", name = "iron-plate", amount = 1}},
			results = {{type="item", name="pie-tin", amount=1}}
		},
		{
			type = "recipe",
			name = "bushel-basket-recipe",
			localised_name = {"item-name.bushel-basket"},
			category = "crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {{type = "item", name = "wood", amount = 1}},
			results = {{type="item", name="bushel-basket", amount=1}}
		},
		
		
		{
			type = "recipe",
			name = "filter-nuts",
			localised_name = {"recipe-name.filter-nuts"},
			enabled = false,
			energy_required = 5,
			ingredients = {{type = "item", name = "nuts", amount = 20}},
			results = {
				{type="item", name="almonds", amount=5},
				{type="item", name="pistachios", amount=5},
				{type="item", name="pecans", amount=5},
				{type="item", name="peanuts", amount=5}
			},
            icons = {
				{icon = "__baketorio_plus__/graphics/almonds.png", icon_size = 32, scale = 0.5, shift = {8,8}},
				{icon = "__baketorio_plus__/graphics/pistachios.png", icon_size = 32, scale = 0.5, shift = {-8,8}},
				{icon = "__baketorio_plus__/graphics/pecans.png", icon_size = 32, scale = 0.5, shift = {-8,-8}},
				{icon = "__baketorio_plus__/graphics/peanuts.png", icon_size = 32, scale = 0.5, shift = {8,-8}},
				{icon = "__baketorio_plus__/graphics/nuts.png", icon_size = 32}
			},
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "filter-nuts-for-almonds",
			localised_name = {"recipe-name.filter-nuts-almonds"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type = "item", name = "nuts", amount = 20}},
			results = {
				{type="item", name="almonds", amount=8},
				{type="item", name="pistachios", amount_min=2, amount_max=3},
				{type="item", name="pecans", amount_min=2, amount_max=3},
				{type="item", name="peanuts", amount_min=2, amount_max=3}
			},
            icon = "__baketorio_plus__/graphics/almonds.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "filter-nuts-for-pistachios",
			localised_name = {"recipe-name.filter-nuts-pistachios"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type = "item", name = "nuts", amount = 20}},
			results = {
				{type="item", name="almonds", amount_min=2, amount_max=3},
				{type="item", name="pistachios", amount=8},
				{type="item", name="pecans", amount_min=2, amount_max=3},
				{type="item", name="peanuts", amount_min=2, amount_max=3}
			},
            icon = "__baketorio_plus__/graphics/pistachios.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "filter-nuts-for-pecans",
			localised_name = {"recipe-name.filter-nuts-pecans"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type = "item", name = "nuts", amount = 20}},
			results = {
				{type="item", name="almonds", amount_min=2, amount_max=3},
				{type="item", name="pistachios", amount_min=2, amount_max=3},
				{type="item", name="pecans", amount=8},
				{type="item", name="peanuts", amount_min=2, amount_max=3}
			},
            icon = "__baketorio_plus__/graphics/pecans.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "filter-nuts-for-peanuts",
			localised_name = {"recipe-name.filter-nuts-peanuts"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type = "item", name = "nuts", amount = 20}},
			results = {
				{type="item", name="almonds", amount_min=2, amount_max=3},
				{type="item", name="pistachios", amount_min=2, amount_max=3},
				{type="item", name="pecans", amount_min=2, amount_max=3},
				{type="item", name="peanuts", amount=8}
			},
            icon = "__baketorio_plus__/graphics/peanuts.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		
		
		{
			type = "recipe",
			name = "peanut-butter-recipe",
			localised_name = {"item-name.peanut-butter"},
			category = "butterize",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "peanuts", amount = 10}, 
				{type="item",name="metal-bucket",amount=1}
			},
			results = {{type="item", name="peanut-butter", amount=1}}
		},
		{
			type = "recipe",
			name = "almond-butter-recipe",
			localised_name = {"item-name.almond-butter"},
			category = "butterize",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "almonds", amount = 10}, 
				{type="item",name="metal-bucket",amount=1}
			},
			results = {{type="item", name="almond-butter", amount=1}}
		},
		
		
		{
			type = "recipe",
			name = "pumpkin-pulp-recipe",
			localised_name = {"item-name.pumpkin-pulp"},
			order="h",
			category = "advanced-crafting",
			subgroup = "ingredient",
			energy_required = 10,
			enabled = false,
			ingredients ={
				{type="item",name="pumpkin",amount=1},
				{type="item",name="metal-bucket",amount=4}
			},
			results = {
				{type="item",name="pumpkin-pulp",amount=4},
				{type="item",name="pumpkin-seeds",amount=1,probability = 0.01},
				{type="item",name="pumpkin-seeds",amount=1},
			},
			icon = "__baketorio_plus__/graphics/pumpkin-pulp.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "slightly-buttered-dough-recipe",
			localised_name = {"item-name.slightly-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "basic-dough", amount = 1}},
			results = {{type="item", name="slightly-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "pretty-buttered-dough-recipe",
			localised_name = {"item-name.pretty-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "slightly-buttered-dough", amount = 1}},
			results = {{type="item", name="pretty-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "fairly-buttered-dough-recipe",
			localised_name = {"item-name.fairly-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "pretty-buttered-dough", amount = 1}},
			results = {{type="item", name="fairly-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "very-buttered-dough-recipe",
			localised_name = {"item-name.very-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "fairly-buttered-dough", amount = 1}},
			results = {{type="item", name="very-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "incredibly-buttered-dough-recipe",
			localised_name = {"item-name.incredibly-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "very-buttered-dough", amount = 1}},
			results = {{type="item", name="incredibly-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "extremely-buttered-dough-recipe",
			localised_name = {"item-name.extremely-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "incredibly-buttered-dough", amount = 1}},
			results = {{type="item", name="extremely-buttered-dough", amount=1}}
		},
		{
			type = "recipe",
			name = "fully-buttered-dough-recipe",
			localised_name = {"item-name.fully-buttered-dough"},
			category = "butterize",
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "extremely-buttered-dough", amount = 1}},
			results = {{type="item", name="fully-buttered-dough", amount=1}}
		},
		
		
		
		
        {
            type = "recipe",
            name = "chocolate-chips-recipe",
            localised_name = {"item-name.chocolate-chips"},
            category = "crafting-with-fluid",
            subgroup = "chocolate",
            energy_required = 15,
            enabled = false,
            ingredients ={
                {type="item",name="cocoa-powder",amount=1},
                {type="fluid",name="milk",amount=2},
            },
            results = {
                {type="item",name="chocolate-chips",amount=2}
            },
        },
		
		
        {
            type = "recipe",
            name = "croissant-recipe",
			localised_name = {"item-name.croissant"},
            category = "crafting",
            subgroup = "croissant",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="item",name="fully-buttered-dough",amount=1},
            },
            results = {
                {type="item",name="croissant",amount=1}
            },
        },
        {
            type = "recipe",
            name = "croissant-cooked-recipe",
			localised_name = {"item-name.croissant-cooked"},
            category = "smelting",
            subgroup = "croissant",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="croissant",amount=1},
            },
            results = {
                {type="item",name="croissant-cooked",amount=1}
            },
        },
        {
            type = "recipe",
            name = "chocolate-chip-buttered-dough-recipe",
			localised_name = {"item-name.chocolate-chip-buttered-dough"},
            category = "crafting",
            subgroup = "croissant",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="fully-buttered-dough",amount=1},
                {type="item",name="chocolate-chips",amount=1},
            },
            results = {
                {type="item",name="chocolate-chip-buttered-dough",amount=1}
            },
        },
        {
            type = "recipe",
            name = "chocolate-chip-croissant-recipe",
			localised_name = {"item-name.chocolate-chip-croissant"},
            category = "crafting",
            subgroup = "croissant",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="item",name="chocolate-chip-buttered-dough",amount=1},
            },
            results = {
                {type="item",name="chocolate-chip-croissant",amount=1}
            },
        },
        {
            type = "recipe",
            name = "chocolate-chip-croissant-cooked-recipe",
			localised_name = {"item-name.chocolate-chip-croissant-cooked"},
            category = "smelting",
            subgroup = "croissant",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="chocolate-chip-croissant",amount=1},
            },
            results = {
                {type="item",name="chocolate-chip-croissant-cooked",amount=1}
            },
        },
        {
            type = "recipe",
            name = "chocolate-chip-croissant-cooked-white-drizzle-recipe",
			localised_name = {"item-name.chocolate-chip-croissant-cooked-white-drizzle"},
            category = "crafting-with-fluid",
            subgroup = "croissant",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="chocolate-chip-croissant-cooked",amount=1},
                {type="fluid",name="white-chocolate-sauce",amount=5},
            },
            results = {
                {type="item",name="chocolate-chip-croissant-cooked-white-drizzle",amount=1}
            },
        },
		
		
		
		{
			type = "recipe",
			name = "cocoa-butter-recipe",
			localised_name = {"item-name.cocoa-butter"},
			category = "butterize",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "cocoa-beans", amount = 4},
				{type = "item", name = "metal-bucket", amount = 1}
			},
			results = {{type="item", name="cocoa-butter", amount=5}}
		},
		
		
        {
            type = "recipe",
            name = "chocolate-ice-cream-recipe",
            localised_name = {"item-name.chocolate-ice-cream"},
            category = "advanced-crafting",
            subgroup = "milk",
            order="ec",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="item",name="plain-ice-cream",amount=1},
                {type="item",name="cocoa-powder",amount=3},
            },
            results = {
                {type="item",name="chocolate-ice-cream",amount=1}
            },
        },
        {
            type = "recipe",
            name = "strawberry-ice-cream-recipe",
            localised_name = {"item-name.strawberry-ice-cream"},
            category = "advanced-crafting",
            subgroup = "milk",
            order="ec",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="item",name="plain-ice-cream",amount=1},
                {type="item",name="strawberries",amount=1},
            },
            results = {
                {type="item",name="strawberry-ice-cream",amount=1},
                {type="item",name="plastic-basket",amount=1}
            },
            icon = "__baketorio_plus__/graphics/strawberry-ice-cream.png",
			icon_size = 32,
        },
        {
            type = "recipe",
            name = "neapolitan-ice-cream-recipe",
            localised_name = {"item-name.neapolitan-ice-cream"},
            category = "advanced-crafting",
            subgroup = "milk",
            order="ec",
            energy_required = 30,
            enabled = false,
            ingredients ={
                {type="item",name="plain-ice-cream",amount=1},
                {type="item",name="chocolate-ice-cream",amount=1},
                {type="item",name="strawberry-ice-cream",amount=1}
            },
            results = {
                {type="item",name="neapolitan-ice-cream",amount=3}
            },
        },
        {
            type = "recipe",
            name = "ice-cream-sundae-recipe",
            localised_name = {"item-name.ice-cream-sundae"},
            category = "crafting-with-fluid",
            subgroup = "milk",
            order="ec",
            energy_required = 30,
            enabled = false,
            ingredients ={
                {type="item",name="neapolitan-ice-cream",amount=1},
                {type="item",name="peanuts",amount=2},
                {type="fluid",name="chocolate-sauce",amount=5}
            },
            results = {
                {type="item",name="ice-cream-sundae",amount=1},
                {type="item",name="plastic-bin",amount=1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/ice-cream-sundae.png",
			icon_size = 32,
        },
		
		
        {
            type = "recipe",
            name = "pancake-batter-recipe",
			localised_name = {"item-name.pancake-batter"},
            category = "crafting-with-fluid",
            subgroup = "basic",
            order="ec",
            energy_required = 10,
            enabled = false,
            ingredients ={
				{type="item", name="flour", amount=3},
				{type="fluid", name="milk", amount=5},
				{type="item", name="egg", amount=1},
				{type="item", name="cinnamon-sugar", amount=1}
            },
            results = {
                {type="item",name="pancake-batter",amount=1}
            },
        },
		
        {
            type = "recipe",
            name = "pancake-cooked-recipe",
			localised_name = {"item-name.pancake-cooked"},
            category = "smelting",
            subgroup = "basic",
            order="ec",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="item",name="pancake-batter",amount=1}
            },
            results = {
                {type="item",name="pancake-cooked",amount=1}
            }
        },
        {
            type = "recipe",
            name = "pancake-with-syrup-recipe",
			localised_name = {"item-name.pancake-with-syrup"},
            category = "crafting-with-fluid",
            subgroup = "basic",
            order="ec",
            energy_required = 10,
            enabled = false,
            ingredients ={
				{type="item", name="pancake-cooked", amount=4},
				{type="fluid", name="syrup", amount=20},
				{type="item", name="butter", amount=1},
				{type="item", name="blueberries", amount=1},
				{type="item", name="strawberries", amount=1},
				{type="item", name="frosting", amount=2}
            },
            results = {
                {type="item",name="pancakes-with-syrup",amount=2}
            }
        },
		
		{
			type = "recipe",
			name = "filo-dough-recipe",
			localised_name = {"item-name.filo-dough"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 15,
			ingredients = {
				{type="item", name="flour", amount=3},
				{type="fluid", name="water", amount=10}
			},
			results = {{type="item", name="filo-dough", amount=2}}
		},
		{
			type = "recipe",
			name = "baklava-recipe",
			localised_name = {"item-name.baklava"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="filo-dough", amount=1},
				{type="item", name="pistachios", amount=6},
				{type="item", name="almonds", amount=2},
				{type="fluid", name="syrup", amount=5}
			},
			results = {{type="item", name="baklava", amount=1}}
		},
		{
			type = "recipe",
			name = "baklava-cooked-recipe",
			localised_name = {"item-name.baklava-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 5,
			ingredients = {{type="item", name="baklava", amount=1}},
			results = {{type="item", name="baklava-cooked", amount=1}}
		},
		
		
		{
			type = "recipe",
			name = "pumpkin-pie-recipe",
            localised_name = {"item-name.pumpkin-pie"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="fryer-dough",amount=1},
				{type="item", name="pumpkin-pulp", amount=1},
				{type="item", name="cinnamon-sugar", amount=2},
				{type="fluid", name="syrup", amount=1},
                {type="item",name="pie-tin",amount=1}
			},
			results = {
				{type="item", name="pumpkin-pie", amount=1},
                {type="item",name="metal-bucket",amount=1,probability=0.9}
            },
			icon = "__baketorio_plus__/graphics/pumpkin-pie.png",
			icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "pumpkin-pie-cooked-recipe",
			localised_name = {"item-name.pumpkin-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="pumpkin-pie", amount=1}},
			results = {{type="item", name="pumpkin-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "pumpkin-pie-cooked-with-ice-cream-recipe",
			localised_name = {"item-name.pumpkin-pie-cooked-with-ice-cream"},
			category = "smelting",
			enabled = false,
			energy_required = 2,
            ingredients ={
                {type="item",name="pumpkin-pie",amount=1},
                {type="item",name="plain-ice-cream",amount=1},
            },
			results = {{type="item", name="pumpkin-pie-cooked-with-ice-cream", amount=1}}
		},
		
		{
			type = "recipe",
			name = "pumpkin-batter-recipe",
            localised_name = {"item-name.pumpkin-batter"},
			category = "advanced-crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type="item", name="pumpkin-pulp", amount=1},
				{type="item", name="cinnamon-sugar", amount=3},
				{type="item", name="flour", amount=2},
				{type="item", name="baking-soda", amount=1},
				{type="item", name="egg", amount=1}
			},
			results = {
				{type="item", name="pumpkin-batter", amount=1},
                {type="item",name="metal-bucket",amount=1,probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/pumpkin-batter.png",
			icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "pumpkin-cookie-recipe",
			localised_name = {"item-name.pumpkin-cookie"},
			category = "crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type="item", name="pumpkin-batter", amount=1},
			},
			results = {{type="item", name="pumpkin-cookie", amount=8}}
		},
		{
			type = "recipe",
			name = "pumpkin-cookie-cooked-recipe",
			localised_name = {"item-name.pumpkin-cookie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 3,
			ingredients = {{type="item", name="pumpkin-cookie", amount=1}},
			results = {{type="item", name="pumpkin-cookie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "pumpkin-cookie-glazed-recipe",
			localised_name = {"item-name.pumpkin-cookie-glazed"},
			category = "crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type="item", name="pumpkin-cookie-cooked", amount=6},
				{type="item", name="salt", amount=1},
				{type="item", name="frosting", amount=2},
			},
			results = {{type="item", name="pumpkin-cookie-glazed", amount=6}}
		},
		
		{
			type = "recipe",
			name = "pecan-pie-recipe",
			localised_name = {"item-name.pecan-pie"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="fryer-dough",amount=1},
                {type="item",name="pecans",amount=6},
				{type="fluid", name="syrup", amount=80},
                {type="item",name="pie-tin",amount=1}
			},
			results = {{type="item", name="pecan-pie", amount=1}}
		},
		{
			type = "recipe",
			name = "pecan-pie-cooked-recipe",
			localised_name = {"item-name.pecan-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="pecan-pie", amount=1}},
			results = {{type="item", name="pecan-pie-cooked", amount=1}}
		},
		
		
		
        {
            type = "recipe",
            name = "pig-recipe",
            localised_name = {"item-name.pig"},
            order = "e",
            category = "organic-synth-recipes",
            subgroup = "seeds",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="item",name="nutrient4",amount=5},
            },
            results = {
                {type="item",name="pig",amount=1}
            },
            icon="__baketorio_plus__/graphics/pig.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "breed-pig-recipe",
            order = "f",
            category = "organic-synth-recipes",
            subgroup = "seeds",
            energy_required = 100,
            enabled = false,
            ingredients ={
                {type="item",name="pig",amount=2},
                {type="item",name="nutrient3",amount=5},
            },
            results = {
                {type="item",name="pig",amount=3}
            },
            icon="__baketorio_plus__/graphics/pig.png",
            icon_size = 32,
        },
		
		
		{
			type = "recipe",
			name = "beef-recipe",
			localised_name = {"item-name.beef"},
			category = "butcher",
			enabled = false,
			energy_required = 30,
			ingredients = {
                {type="item",name="cow",amount=1},
                {type="item",name="plastic-bin",amount=4}
			},
			results = {{type="item", name="beef", amount=4}}
		},
		{
			type = "recipe",
			name = "pork-recipe",
			localised_name = {"item-name.pork"},
			category = "butcher",
			enabled = false,
			energy_required = 30,
			ingredients = {
                {type="item",name="pig",amount=1},
                {type="item",name="plastic-bin",amount=5}
			},
			results = {
				{type="item", name="pork", amount=5},
				{type="fluid", name="gelatin", amount=100}
			},
            icon = "__baketorio_plus__/graphics/pork.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "chicken-meat-recipe",
			localised_name = {"item-name.chicken-meat"},
			category = "butcher",
			enabled = false,
			energy_required = 30,
			ingredients = {
                {type="item",name="chicken",amount=1},
                {type="item",name="plastic-bin",amount=2}
			},
			results = {{type="item", name="chicken-meat", amount=2}}
		},
		{
			type = "recipe",
			name = "mutton-recipe",
			localised_name = {"item-name.mutton"},
			category = "butcher",
			enabled = false,
			energy_required = 30,
			ingredients = {
                {type="item",name="sheep",amount=1},
                {type="item",name="plastic-bin",amount=3}
			},
			results = {{type="item", name="mutton", amount=3}}
		},
		
			
		{
			type = "recipe",
			name = "meat-pie-beef-recipe",
			localised_name = {"recipe-name.meat-pie-beef"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="fryer-dough",amount=1},
                {type="item",name="beef",amount=3},
				{type="fluid", name="gravy", amount=25},
                {type="item",name="pie-tin",amount=1}
			},
			results = {
				{type="item", name="meat-pie", amount=1},
                {type="item",name="plastic-bin",amount_min=2,amount_max=3}
			},
            icon="__baketorio_plus__/graphics/meat-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "meat-pie-mutton-recipe",
			localised_name = {"recipe-name.meat-pie-mutton"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="fryer-dough",amount=1},
                {type="item",name="mutton",amount=4},
				{type="fluid", name="gravy", amount=25},
                {type="item",name="pie-tin",amount=1}
			},
			results = {
				{type="item", name="meat-pie", amount=1},
                {type="item",name="plastic-bin",amount_min=3,amount_max=4}
			},
            icon="__baketorio_plus__/graphics/meat-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "meat-pie-cooked-recipe",
			localised_name = {"item-name.meat-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="meat-pie", amount=1}},
			results = {{type="item", name="meat-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "chicken-pot-pie-recipe",
			localised_name = {"item-name.chicken-pot-pie"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="fryer-dough",amount=1},
                {type="item",name="chicken-meat",amount=1},
				{type="fluid", name="gravy", amount=75},
                {type="item",name="pie-tin",amount=1}
			},
			results = {
				{type="item", name="chicken-pot-pie", amount=1},
                {type="item",name="plastic-bin",amount=1,probability=0.9}
			},
            icon="__baketorio_plus__/graphics/chicken-pot-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "chicken-pot-pie-cooked-recipe",
			localised_name = {"item-name.chicken-pot-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="chicken-pot-pie", amount=1}},
			results = {{type="item", name="chicken-pot-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "sausage-roll-recipe",
			localised_name = {"item-name.sausage-roll"},
			category = "crafting",
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="slightly-buttered-dough",amount=1},
                {type="item",name="pork",amount=5},
			},
			results = {
				{type="item", name="sausage-roll", amount=1},
                {type="item",name="plastic-bin",amount_min=4,amount_max=5}
			},
            icon="__baketorio_plus__/graphics/sausage-roll.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "sausage-roll-cooked-recipe",
			localised_name = {"item-name.sausage-roll-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 20,
			ingredients = {{type="item", name="sausage-roll", amount=1}},
			results = {{type="item", name="sausage-roll-cooked", amount=2}}
		},
		
			
			
			
--[[
			meringue -> egg, sugar, and cream
			
			also, meringue cookies (just baked meringue) in the meringue tech
			
			lemon-meringue-pie 
			]]
		{
			type = "recipe",
			name = "meringue-recipe",
			localised_name = {"item-name.meringue"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 5,
			ingredients = {
                {type="item",name="egg",amount=1},
                {type="item",name="sugar",amount=1},
                {type="fluid",name="cream",amount=5},
			},
			results = {
				{type="item", name="meringue", amount=1}
			}
		},
		{
			type = "recipe",
			name = "meringue-cookies-recipe",
			localised_name = {"item-name.meringue-cookies"},
			category = "smelting",
			enabled = false,
			energy_required = 15,
			ingredients = {{type="item", name="meringue", amount=1}},
			results = {{type="item", name="meringue-cookies", amount=1}}
		},
		
		
		--  lemon tarts (bars) made with slightly buttered dough and lemon curd
		{
			type = "recipe",
			name = "apple-fritter-recipe",
			localised_name = {"item-name.apple-fritter"},
			category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="fryer-dough",amount=2},
                {type="item",name="cinnamon-sugar",amount=1},
                {type="item",name="apples",amount=1},
			},
			results = {
				{type="item", name="apple-fritter", amount=2},
				{type="item", name="bushel-basket", amount=1, probability=0.5}
			},
            icon="__baketorio_plus__/graphics/apple-fritter.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "apple-fritter-cooked-recipe",
			localised_name = {"item-name.apple-fritter-cooked"},
			category = "chemistry",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="fluid",name="light-oil",amount=8},
				{type="item", name="apple-fritter", amount=1}
			},
			results = {
				{type="fluid",name="light-oil",amount=5},
				{type="item", name="apple-fritter-cooked", amount=1}
			},
            icon="__baketorio_plus__/graphics/apple-fritter.png",
            icon_size = 32,
            group = "food",
            subgroup = "bread",
		},
		{
			type = "recipe",
			name = "apple-fritter-glazed-recipe",
			localised_name = {"item-name.apple-fritter-glazed"},
			category = "crafting",
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type="item", name="apple-fritter-cooked", amount=2},
				{type="item", name="frosting", amount=1},
			},
			results = {{type="item", name="apple-fritter-glazed", amount=2}}
		},
		
		{
			type = "recipe",
			name = "apple-pie-recipe",
			localised_name = {"item-name.apple-pie"},
			category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="pie-tin",amount=2},
                {type="item",name="fryer-dough",amount=2},
                {type="item",name="cinnamon",amount=1},
                {type="item",name="apples",amount=2},
			},
			results = {
				{type="item", name="apple-pie", amount=2},
				{type="item", name="bushel-basket", amount_min=1, amount_max=2}
			},
            icon="__baketorio_plus__/graphics/apple-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "apple-pie-cooked-recipe",
			localised_name = {"item-name.apple-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="apple-pie", amount=1}},
			results = {{type="item", name="apple-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "apple-pie-cooked-with-ice-cream-recipe",
			localised_name = {"item-name.apple-pie-cooked-with-ice-cream"},
			category = "crafting",
			enabled = false,
			energy_required = 2,
			ingredients = {
				{type="item", name="apple-pie-cooked", amount=1},
				{type="item", name="plain-ice-cream", amount=1},
			},
			results = {{type="item", name="apple-pie-cooked-with-ice-cream", amount=1}}
		},
		
		{
			type = "recipe",
			name = "peach-cobbler-recipe",
			localised_name = {"item-name.peach-cobbler"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="pie-tin",amount=1},
                {type="fluid",name="cobbler-mixture",amount=25},
                {type="item",name="cinnamon",amount=1},
                {type="item",name="peaches",amount=1},
			},
			results = {
				{type="item", name="peach-cobbler", amount=2},
				{type="item", name="bushel-basket", amount=1, probability=0.5}
			},
            icon="__baketorio_plus__/graphics/peach-cobbler.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "peach-cobbler-cooked-recipe",
			localised_name = {"item-name.peach-cobbler-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="peach-cobbler", amount=1}},
			results = {{type="item", name="peach-cobbler-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "peach-cobbler-cooked-with-ice-cream-recipe",
			localised_name = {"item-name.peach-cobbler-cooked-with-ice-cream"},
			category = "crafting",
			enabled = false,
			energy_required = 2,
			ingredients = {
				{type="item", name="peach-cobbler-cooked", amount=1},
				{type="item", name="plain-ice-cream", amount=1},
			},
			results = {{type="item", name="peach-cobbler-cooked-with-ice-cream", amount=1}}
		},
		
		{
			type = "recipe",
			name = "lemon-curd-recipe",
			localised_name = {"item-name.lemon-curd"},
			category = "chemistry",
			enabled = false,
			energy_required = 5,
			ingredients = {
                {type="fluid",name="gelatin",amount=20},
                {type="fluid",name="lemon-juice",amount=25},
                {type="item",name="plastic-bin",amount=1},
			},
			results = {
				{type="item", name="lemon-curd", amount=1},
			}
		},
		
		{
			type = "recipe",
			name = "lemon-tart-recipe",
			localised_name = {"item-name.lemon-tart"},
			category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="slightly-buttered-dough",amount=1},
                {type="item",name="lemon-curd",amount=1},
			},
			results = {
				{type="item", name="lemon-tart", amount=2},
				{type="item", name="plastic-bin", amount=1, probability=0.9}
			},
            icon="__baketorio_plus__/graphics/lemon-tart.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "lemon-tart-cooked-recipe",
			localised_name = {"item-name.lemon-tart-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="lemon-tart", amount=1}},
			results = {{type="item", name="lemon-tart-cooked", amount=1}}
		},
		
		{
			type = "recipe",
			name = "lemon-meringue-pie-recipe",
			localised_name = {"item-name.lemon-meringue-pie"},
			category = "crafting",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="pie-tin",amount=1},
                {type="item",name="fryer-dough",amount=1},
                {type="item",name="lemon-curd",amount=1},
                {type="item",name="meringue",amount=1},
			},
			results = {
				{type="item", name="lemon-meringue-pie", amount=1},
				{type="item", name="plastic-bin", amount=1, probability=0.9}
			},
            icon="__baketorio_plus__/graphics/lemon-meringue-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "lemon-meringue-pie-cooked-recipe",
			localised_name = {"item-name.lemon-meringue-pie-cooked"},
			category = "smelting",
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="lemon-meringue-pie", amount=1}},
			results = {{type="item", name="lemon-meringue-pie-cooked", amount=1}}
		},
		
		
		
		{
			type = "recipe",
			name = "fruit-baking-science-pack",
			localised_name = {"item-name.fruit-baking-science-pack"},
			category = "crafting",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="apple-pie-cooked",amount=1},
                {type="item",name="lemon-tart-cooked",amount=1},
                {type="item",name="peach-cobbler-cooked",amount=1},
			},
			results = {
				{type="item", name="fruit-baking-science-pack", amount=1}
			},
		},
		{
			type = "recipe",
			name = "fruit-baking-science-pack-2",
			localised_name = {"item-name.fruit-baking-science-pack"},
			category = "crafting",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="apple-pie-cooked-with-ice-cream",amount=1},
                {type="item",name="lemon-meringue-pie-cooked",amount=1},
                {type="item",name="peach-cobbler-cooked-with-ice-cream",amount=1},
			},
			results = {
				{type="item", name="fruit-baking-science-pack", amount=2}
			},
		},
		{
			type = "recipe",
			name = "meat-baking-science-pack",
			localised_name = {"item-name.meat-baking-science-pack"},
			category = "crafting",
			enabled = false,
			energy_required = 20,
			ingredients = {
                {type="item",name="meat-pie-cooked",amount=1},
                {type="item",name="chicken-pot-pie-cooked",amount=1},
                {type="item",name="sausage-roll-cooked",amount=1},
			},
			results = {
				{type="item", name="meat-baking-science-pack", amount=1}
			},
		},
		
		
		--  sheep stuff
        {
            type = "recipe",
            name = "sheep-recipe",
            localised_name = {"item-name.sheep"},
            order = "e",
            category = "organic-synth-recipes",
            subgroup = "seeds",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="item",name="nutrient1",amount=50},
            },
            results = {
                {type="item",name="sheep",amount=1}
            },
            icon="__baketorio_plus__/graphics/sheep.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "breed-sheep-recipe",
            order = "f",
            category = "organic-synth-recipes",
            subgroup = "seeds",
            energy_required = 100,
            enabled = false,
            ingredients ={
                {type="item",name="sheep",amount=2},
                {type="item",name="nutrient1",amount=10},
            },
            results = {
                {type="item",name="sheep",amount=3}
            },
            icon="__baketorio_plus__/graphics/sheep.png",
            icon_size = 32,
        },
		
		--  flour/bag stuff
		{
			type = "recipe",
			name = "flour-box-recipe",
			localised_name = {"item-name.flour-box"},
			category = "crafting",
			enabled = true,
			energy_required = 2,
			ingredients = {
                {type="item",name="wooden-chest",amount=1},
                {type="item",name="wheat",amount=10},
			},
			results = {
				{type="item", name="flour-box", amount=1}
			},
		},
        {
            type = "recipe",
            name = "hardtack-box-recipe",
            localised_name = {"recipe-name.hardtack-box"},
            category = "smelting",
            subgroup = "bread",
            energy_required = 2,
            enabled = true,
            ingredients ={
                {type="item",name="flour-box",amount=1}
            },
            results = {
                {type="item",name="hardtack",amount=2},
				{type="item", name="wooden-chest", amount=1, probability=0.75}
            },
            icon = "__baketorio__/graphics/hardtack.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
        },
		{
			type = "recipe",
			name = "basic-dough-box-recipe",
			localised_name = {"recipe-name.dough-box"},
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 2,
			ingredients = {
                {type="item",name="flour-box",amount=1},
                {type="fluid",name="water",amount=5},
			},
			results = {
				{type="item", name="basic-dough", amount=1},
				{type="item", name="wooden-chest", amount=1, probability=0.75}
			},
            icon="__baketorio__/graphics/dough.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		
		{
			type = "recipe",
			name = "yarn-recipe",
			localised_name = {"item-name.yarn"},
			category = "crafting",
			enabled = true,
			energy_required = 12,
			ingredients = {
                {type="item",name="wool",amount=1},
			},
			results = {
				{type="item", name="yarn", amount=20}
			},
		},
		{
			type = "recipe",
			name = "fabric-recipe",
			localised_name = {"item-name.fabric"},
			category = "crafting",
			enabled = true,
			energy_required = 8,
			ingredients = {
                {type="item",name="yarn",amount=4},
			},
			results = {
				{type="item", name="fabric", amount=1}
			},
		},
		{
			type = "recipe",
			name = "bag-recipe",
			localised_name = {"item-name.bag"},
			category = "crafting",
			enabled = true,
			energy_required = 8,
			ingredients = {
                {type="item",name="yarn",amount=1},
				{type="item", name="fabric", amount=1}
			},
			results = {
				{type="item", name="bag", amount=1}
			},
		},
	}
)


--[[
data.raw["recipe"]["cheese-recipe"].ingredients ={
                {type="fluid",name="milk",amount=30},
                {type="fluid",name="cream",amount=2},
                {type="item", name="paper", amount=1}}

data.raw["recipe"]["butter-solidification"].ingredients ={
                {type="fluid",name="liquid-butter",amount=5},
                {type="item", name="paper", amount=1}}

data.raw["recipe"]["plain-ice-cream"].ingredients ={
                {type="item",name="sugar",amount=1},
                {type="fluid",name="milk",amount=5},
                {type="item",name="plastic-bin",amount=1}}
]]--


--  add wrappers/bins
table.insert(data.raw["recipe"]["butter-solidification"].ingredients, {type="item",name="paper-wrapper",amount=1} )
table.insert(data.raw["recipe"]["cheese-recipe"].ingredients, {type="item",name="paper-wrapper",amount=5} )  --  recipe makes 5 cheese so need equal wrappers
table.insert(data.raw["recipe"]["basic-batter-cupcake-recipe"].ingredients, {type="item",name="paper-wrapper",amount=2} )  --  set with 2 because it will make 2 cupcakes
table.insert(data.raw["recipe"]["chocolate-batter-cupcake-recipe"].ingredients, {type="item",name="paper-wrapper",amount=2} )
table.insert(data.raw["recipe"]["advanced-cake-batter-cupcake-recipe"].ingredients, {type="item",name="paper-wrapper",amount=2} )
table.insert(data.raw["recipe"]["plain-ice-cream"].ingredients, {type="item",name="plastic-bin",amount=1} )

--  double cupcake outputs
data.raw["recipe"]["basic-batter-cupcake-recipe"].results = {{type="item",name="basic-batter-cupcake",amount=2}}
data.raw["recipe"]["chocolate-batter-cupcake-recipe"].ingredients = {{type="item",name="chocolate-batter-cupcake",amount=2}}
data.raw["recipe"]["advanced-cake-batter-cupcake-recipe"].ingredients = {{type="item",name="advanced-cake-batter-cupcake",amount=2}}

--  fry donuts now
table.insert(data.raw["recipe"]["fryer-dough-doughnut-cooked-recipe"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["fryer-dough-doughnut-cooked-recipe"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["fryer-dough-doughnut-cooked-recipe"].category = "chemistry"
data.raw["recipe"]["fryer-dough-doughnut-cooked-recipe"].icon = "__baketorio__/graphics/fryer-dough-doughnut-cooked.png"
data.raw["recipe"]["fryer-dough-doughnut-cooked-recipe"].icon_size = 32
table.insert(data.raw["recipe"]["chocolate-batter-doughnut-cooked-recipe"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["chocolate-batter-doughnut-cooked-recipe"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["chocolate-batter-doughnut-cooked-recipe"].category = "chemistry"
data.raw["recipe"]["chocolate-batter-doughnut-cooked-recipe"].icon = "__baketorio__/graphics/chocolate-batter-doughnut-cooked.png"
data.raw["recipe"]["chocolate-batter-doughnut-cooked-recipe"].icon_size = 32
table.insert(data.raw["recipe"]["blueberry-batter-doughnut-cooked-recipe"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["blueberry-batter-doughnut-cooked-recipe"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["blueberry-batter-doughnut-cooked-recipe"].category = "chemistry"
data.raw["recipe"]["blueberry-batter-doughnut-cooked-recipe"].icon = "__baketorio__/graphics/blueberry-batter-doughnut-cooked.png"
data.raw["recipe"]["blueberry-batter-doughnut-cooked-recipe"].icon_size = 32

--  chocolate chips
data.raw["recipe"]["chocolate-chip-batter-recipe"].ingredients ={
                {type="item",name="basic-batter",amount=1},
                {type="item",name="chocolate-chips",amount=2}
            }
			
--  ..nah
--[[
data.raw["recipe"]["basic-recipe"].ingredients = {
            {type="item", name="flour", amount=3},
            {type="fluid", name="milk", amount=5},
            {type="item", name="butter", amount=1},
            {type="item", name="egg", amount=1},
            {type="item", name="sugar", amount=2}  --  more sugar
        }
]]--

table.insert(data.raw["recipe"]["blueberry-pie-recipe"].ingredients, {type="item",name="pie-tin",amount=1} )
table.insert(data.raw["recipe"]["blueberry-pie-recipe"].results, {type="item",name="plastic-basket",amount_min=7,amount_max=10} )
data.raw["recipe"]["blueberry-pie-recipe"].icon = "__baketorio__/graphics/blueberry-pie.png"
data.raw["recipe"]["blueberry-pie-recipe"].icon_size = 32
data.raw["recipe"]["blueberry-pie-recipe"].localised_name = {"item-name.blueberry-pie"}

table.insert(data.raw["recipe"]["strawberry-pie-recipe"].ingredients, {type="item",name="pie-tin",amount=1} )
table.insert(data.raw["recipe"]["strawberry-pie-recipe"].results, {type="item",name="plastic-basket",amount_min=2,amount_max=3} )
data.raw["recipe"]["strawberry-pie-recipe"].icon = "__baketorio__/graphics/strawberry-pie.png"
data.raw["recipe"]["strawberry-pie-recipe"].icon_size = 32
data.raw["recipe"]["strawberry-pie-recipe"].localised_name = {"item-name.strawberry-pie"}

table.insert(data.raw["recipe"]["blueberry-batter-recipe"].results, {type="item",name="plastic-basket",amount=1,probability=0.9} )
data.raw["recipe"]["blueberry-batter-recipe"].localised_name = {"item-name.blueberry-batter"}

table.insert(data.raw["recipe"]["advanced-cake-batter-recipe"].results, {type="item",name="plastic-basket",amount=1,probability=0.9} )
data.raw["recipe"]["advanced-cake-batter-recipe"].icon = "__baketorio__/graphics/advanced-cake-batter.png"
data.raw["recipe"]["advanced-cake-batter-recipe"].icon_size = 32
data.raw["recipe"]["advanced-cake-batter-recipe"].localised_name = {"item-name.advanced-cake-batter"}


data.raw["recipe"]["production-science-pack"].ingredients =
{
    {type="item", name="strawberry-pie-cooked", amount=1},  --  no longer blueberry pie, so that it focusses just on strawberries
    {type="item", name="brownies-with-ice-cream", amount=2},
    {type="item", name="advanced-cake-batter-cake-cooked-frosted", amount=1},
    {type="item", name="chocolate-chip-cookie", amount=8},
}



data.raw["recipe"]["rocket-part"].ingredients =
{
    {type="item", name="baklava-cooked", amount=1},
    {type="item", name="pecan-pie-cooked", amount=1},
    {type="item", name="pumpkin-cookie-glazed", amount=4},
    {type="item", name="ice-cream-sundae", amount=1},
    {type="item", name="pancakes-with-syrup", amount=1},
    {type="item", name="chocolate-chip-croissant-cooked-white-drizzle", amount=1},
}
data.raw["recipe"]["rocket-part"].results =
{
    {type="item", name="rocket-part", amount=2},
}
--  spaceship part (2,3?) built with baklava, peacan pie, pumpkin cookie(s), ice cream sundae, pancakes with syrup, and chocolate croissant with white chocolate drizzle

		
--  add bags to recipes
table.insert(data.raw["recipe"]["flour-recipe"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["sugar-recipe"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["cinnamon-sugar-recipe"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["cocoa-powder-recipe"].ingredients, {type="item",name="bag",amount=2} )
--  add bags to recipe results
table.insert(data.raw["recipe"]["hardtack-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["hardtack-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["cobbler-mixture-recipe"].results, {type="item",name="bag",amount_min=4,amount_max=5} )
table.insert(data.raw["recipe"]["gravy-beef-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["gravy-pork-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["gravy-chicken-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["gravy-mutton-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["filo-dough-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["filo-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["pumpkin-batter-recipe"].results, {type="item",name="bag",amount_min=4,amount_max=5} )
table.insert(data.raw["recipe"]["basic-batter-recipe"].results, {type="item",name="bag",amount=3} )
table.insert(data.raw["recipe"]["basic-batter-recipe"].results, {type="item",name="bag",amount=1,probability=0.2} )
table.insert(data.raw["recipe"]["basic-dough-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["basic-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["sugar-dough-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["sugar-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["egg-dough-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["egg-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["fryer-dough-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["fryer-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["cinnamon-dough-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["cinnamon-dough-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["pancake-batter-recipe"].results, {type="item",name="bag",amount=3} )
table.insert(data.raw["recipe"]["pancake-batter-recipe"].results, {type="item",name="bag",amount=1,probability=0.2} )
table.insert(data.raw["recipe"]["sugar-water-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["sugar-water-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["white-chocolate-sauce-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["white-chocolate-sauce-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["meringue-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["frosting-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["plain-ice-cream"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["apple-fritter-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["pumpkin-pie-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["pumpkin-pie-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["fryer-dough-bun-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["cinnamon-sugar-doughnut-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
table.insert(data.raw["recipe"]["chocolate-sauce-recipe"].results, {type="item",name="bag",amount_min=24,amount_max=30} )
table.insert(data.raw["recipe"]["chocolate-batter-recipe"].results, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["chocolate-batter-recipe"].results, {type="item",name="bag",amount=1,probability=0.6} )
table.insert(data.raw["recipe"]["chocolate-ice-cream-recipe"].results, {type="item",name="bag",amount=2} )
table.insert(data.raw["recipe"]["chocolate-ice-cream-recipe"].results, {type="item",name="bag",amount=1,probability=0.4} )
table.insert(data.raw["recipe"]["chocolate-chips-recipe"].results, {type="item",name="bag",amount=1,probability=0.8} )
		

data.raw["recipe"]["cobbler-mixture-recipe"].icon="__baketorio_plus__/graphics/cobbler-mixture.png"
data.raw["recipe"]["gravy-beef-recipe"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["gravy-pork-recipe"].icon="__baketorio_plus__/graphics/gravy.png"

data.raw["recipe"]["gravy-chicken-recipe"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["gravy-mutton-recipe"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["filo-dough-recipe"].icon="__baketorio_plus__/graphics/filo-dough.png"

data.raw["recipe"]["pumpkin-batter-recipe"].icon="__baketorio_plus__/graphics/pumpkin-batter.png"
data.raw["recipe"]["basic-batter-recipe"].icon="__baketorio__/graphics/cakebatter.png"
data.raw["recipe"]["basic-dough-recipe"].icon="__baketorio__/graphics/basic-dough.png"
data.raw["recipe"]["sugar-dough-recipe"].icons=data.raw["item"]["sugar-dough"].icons

data.raw["recipe"]["egg-dough-recipe"].icons=data.raw["item"]["egg-dough"].icons
data.raw["recipe"]["fryer-dough-recipe"].icon="__baketorio__/graphics/fryer-dough.png"
data.raw["recipe"]["cinnamon-dough-recipe"].icons=data.raw["item"]["cinnamon-dough"].icons
data.raw["recipe"]["pancake-batter-recipe"].icon="__baketorio_plus__/graphics/pancake-batter.png"

data.raw["recipe"]["sugar-water-recipe"].icon="__baketorio_plus__/graphics/sugar-water.png"
data.raw["recipe"]["white-chocolate-sauce-recipe"].icon="__baketorio_plus__/graphics/white-chocolate-sauce.png"
data.raw["recipe"]["meringue-recipe"].icon="__baketorio_plus__/graphics/meringue.png"
data.raw["recipe"]["frosting-recipe"].icon="__baketorio__/graphics/frosting.png"

data.raw["recipe"]["plain-ice-cream"].icon="__baketorio__/graphics/plain-ice-cream.png"
data.raw["recipe"]["apple-fritter-recipe"].icon="__baketorio_plus__/graphics/apple-fritter.png"
data.raw["recipe"]["pumpkin-pie-recipe"].icon="__baketorio_plus__/graphics/pumpkin-pie.png"
data.raw["recipe"]["fryer-dough-bun-recipe"].icon="__baketorio__/graphics/fryer-dough-bun.png"

data.raw["recipe"]["cinnamon-sugar-doughnut-recipe"].icon="__baketorio__/graphics/cinnamon-sugar-doughnut.png"
data.raw["recipe"]["chocolate-sauce-recipe"].icon="__baketorio_plus__/graphics/chocolate-sauce.png"
data.raw["recipe"]["chocolate-batter-recipe"].icon="__baketorio__/graphics/chocolate-batter.png"

data.raw["recipe"]["chocolate-ice-cream-recipe"].icon="__baketorio_plus__/graphics/chocolate-ice-cream.png"
data.raw["recipe"]["chocolate-chips-recipe"].icon="__baketorio_plus__/graphics/chocolate-chips.png"
data.raw["recipe"]["hardtack-recipe"].icon="__baketorio__/graphics/hardtack.png"


local list = {"cobbler-mixture-recipe", "gravy-beef-recipe", "gravy-pork-recipe",
	"gravy-chicken-recipe", "gravy-mutton-recipe", "filo-dough-recipe",
	"pumpkin-batter-recipe", "basic-batter-recipe", "basic-dough-recipe", "sugar-dough-recipe",
	"egg-dough-recipe", "fryer-dough-recipe", "cinnamon-dough-recipe", "pancake-batter-recipe",
	"sugar-water-recipe", "white-chocolate-sauce-recipe", "meringue-recipe", "frosting-recipe",
	"plain-ice-cream", "apple-fritter-recipe", "pumpkin-pie-recipe", "fryer-dough-bun-recipe",
	"cinnamon-sugar-doughnut-recipe", "chocolate-sauce-recipe", "chocolate-batter-recipe",
	"chocolate-ice-cream-recipe", "chocolate-chips-recipe", "hardtack-recipe"}

for key,value in pairs(list) do
	data.raw["recipe"][value].icon_size = 32
	data.raw["recipe"][value].group = "food"
	data.raw["recipe"][value].subgroup = "ingredient"
end









