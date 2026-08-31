-- Add recipe names here to add them to productivity modules
local prod_recipes = {
  "bake-burner-boiler",
  "bake-electric-boiler",
  "butterizer",
  "butcher",
  "plastic-bin",
  "plastic-basket",
  "bushel-basket",
  "metal-bucket",
  "filter-nuts",
  "filter-nuts-for-almonds",
  "filter-nuts-for-pistachios",
  "filter-nuts-for-pecans",
  "filter-nuts-for-peanuts",
  "peanut-butter",
  "pumpkin-pulp",
  "buttered-dough-1",
  "buttered-dough-2",
  "buttered-dough-3",
  "buttered-dough-4",
  "buttered-dough-5",
  "buttered-dough-6",
  "buttered-dough-7",
  "cocoa-butter",
  "croissant-cooked",
  "chocolate-chip-croissant-cooked",
  "chocolate-chip-buttered-dough",
  "chocolate-chip-croissant-cooked-white-drizzle",
  "chocolate-ice-cream",
  "strawberry-ice-cream",
  "neapolitan-ice-cream",
  "ice-cream-sundae",
  "pancake-batter",
  "pancake-cooked",
  "pancakes-with-syrup",
  "pie-tin",
  "filo-dough",
  "baklava",
  "baklava-cooked",
  "pumpkin-batter",
  "pumpkin-cookie",
  "pumpkin-cookie-cooked",
  "pumpkin-cookie-glazed",
  "pecan-pie",
  "pecan-pie-cooked",
  "pig",
  "breed-pig",
  "beef",
  "pork",
  "chicken",
  "meat-pie-beef",
  "meat-pie-mutton",
  "meat-pie-cooked",
  "chicken-pot-pie",
  "chicken-pot-pie-cooked",
  "sausage-roll",
  "sausage-roll-cooked",
}

data:extend(
    {
		{
			type = "recipe",
			name = "bake-burner-boiler",
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
			name = "bake-electric-boiler",
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
			name = "butterizer",
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
			name = "butcher",
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
			name = "plastic-bin",
			localised_name = {"item-name.plastic-bin"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "plastic-bar", amount = 1}},
			results = {{type="item", name="plastic-bin", amount=1}}
		},
		{
			type = "recipe",
			name = "metal-bucket",
			localised_name = {"item-name.metal-bucket"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "iron-plate", amount = 1}},
			results = {{type="item", name="metal-bucket", amount=1}}
		},
		{
			type = "recipe",
			name = "plastic-basket",
			localised_name = {"item-name.plastic-basket"},
			enabled = false,
			subgroup = "intermediate-product",
			ingredients = {{type = "item", name = "plastic-bar", amount = 1}},
			results = {{type="item", name="plastic-basket", amount=3}}
		},
		{
			type = "recipe",
			name = "pie-tin",
			localised_name = {"item-name.pie-tin"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 1,
			ingredients = {{type = "item", name = "iron-plate", amount = 1}},
			results = {{type="item", name="pie-tin", amount=1}}
		},
		{
			type = "recipe",
			name = "bushel-basket",
			localised_name = {"item-name.bushel-basket"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type = "item", name = "wood", amount = 1},
				{type = "item", name = "iron-stick", amount = 1}},
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
			name = "peanut-butter",
			localised_name = {"item-name.peanut-butter"},
			categories = {"crafting-with-fluid"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "fluid", name = "peanut-butter-fluid", amount = 100}, 
				{type="item",name="metal-bucket",amount=1}
			},
			results = {{type="item", name="peanut-butter", amount=1}}
		},
		{
			type = "recipe",
			name = "almond-butter",
			localised_name = {"item-name.almond-butter"},
			categories = {"crafting-with-fluid"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "fluid", name = "almond-butter-fluid", amount = 100}, 
				{type="item",name="metal-bucket",amount=1}
			},
			results = {{type="item", name="almond-butter", amount=1}}
		},
		
		
		{
			type = "recipe",
			name = "pumpkin-pulp",
			localised_name = {"item-name.pumpkin-pulp"},
			order="h",
			categories = {"advanced-crafting"},
			subgroup = "ingredient",
			energy_required = 10,
			enabled = false,
			ingredients ={
				{type="item",name="pumpkin",amount=1},
				{type="item",name="metal-bucket",amount=4}
			},
			results = {
				{type="item",name="pumpkin-pulp",amount=4},
				{type="item",name="pumpkin-seeds",amount=1,independent_probability = 0.01},
				{type="item",name="pumpkin-seeds",amount=1},
			},
			icon = "__baketorio_plus__/graphics/pumpkin-pulp.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "buttered-dough-1",
			localised_name = {"item-name.slightly-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "basic-dough", amount = 1}},
			results = {{type="item", name="buttered-dough-1", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-2",
			localised_name = {"item-name.pretty-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-1", amount = 1}},
			results = {{type="item", name="buttered-dough-2", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-3",
			localised_name = {"item-name.fairly-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-2", amount = 1}},
			results = {{type="item", name="buttered-dough-3", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-4",
			localised_name = {"item-name.very-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-3", amount = 1}},
			results = {{type="item", name="buttered-dough-4", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-5",
			localised_name = {"item-name.incredibly-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-4", amount = 1}},
			results = {{type="item", name="buttered-dough-5", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-6",
			localised_name = {"item-name.extremely-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-5", amount = 1}},
			results = {{type="item", name="buttered-dough-6", amount=1}}
		},
		{
			type = "recipe",
			name = "buttered-dough-7",
			localised_name = {"item-name.fully-buttered-dough"},
			categories = {"butterize"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type = "item", name = "buttered-dough-6", amount = 1}},
			results = {{type="item", name="buttered-dough-7", amount=1}}
		},
		
		
		
		
        {
            type = "recipe",
            name = "chocolate-chips",
            localised_name = {"item-name.chocolate-chips"},
            categories = {"crafting-with-fluid"},
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
            name = "croissant",
			localised_name = {"item-name.croissant"},
            categories = {"crafting"},
            subgroup = "croissant",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="item",name="buttered-dough-7",amount=1},
            },
            results = {
                {type="item",name="croissant",amount=1}
            },
        },
        {
            type = "recipe",
            name = "croissant-cooked",
			localised_name = {"item-name.croissant-cooked"},
            categories = {"smelting"},
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
            name = "chocolate-chip-buttered-dough",
			localised_name = {"item-name.chocolate-chip-buttered-dough"},
            categories = {"crafting"},
            subgroup = "croissant",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="buttered-dough-7",amount=1},
                {type="item",name="chocolate-chips",amount=1},
            },
            results = {
                {type="item",name="chocolate-chip-buttered-dough",amount=1}
            },
        },
        {
            type = "recipe",
            name = "chocolate-chip-croissant",
			localised_name = {"item-name.chocolate-chip-croissant"},
            categories = {"crafting"},
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
            name = "chocolate-chip-croissant-cooked",
			localised_name = {"item-name.chocolate-chip-croissant-cooked"},
            categories = {"smelting"},
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
            name = "chocolate-chip-croissant-cooked-white-drizzle",
			localised_name = {"item-name.chocolate-chip-croissant-cooked-white-drizzle"},
            categories = {"crafting-with-fluid"},
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
			name = "cocoa-butter",
			localised_name = {"item-name.cocoa-butter"},
			categories = {"crafting-with-fluid"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "fluid", name = "cocoa-butter-fluid", amount = 40},
				{type = "item", name = "metal-bucket", amount = 1}
			},
			results = {{type="item", name="cocoa-butter", amount=5}}
		},
		
		
        {
            type = "recipe",
            name = "chocolate-ice-cream",
            localised_name = {"item-name.chocolate-ice-cream"},
            categories = {"advanced-crafting"},
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
            name = "strawberry-ice-cream",
            localised_name = {"item-name.strawberry-ice-cream"},
            categories = {"advanced-crafting"},
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
                {type="item",name="plastic-basket",amount=1,independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/strawberry-ice-cream.png",
			icon_size = 32,
        },
        {
            type = "recipe",
            name = "neapolitan-ice-cream",
            localised_name = {"item-name.neapolitan-ice-cream"},
            categories = {"advanced-crafting"},
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
            name = "ice-cream-sundae",
            localised_name = {"item-name.ice-cream-sundae"},
            categories = {"crafting-with-fluid"},
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
                {type="item",name="plastic-bin",amount=1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/ice-cream-sundae.png",
			icon_size = 32,
        },
		
		
        {
            type = "recipe",
            name = "pancake-batter",
			localised_name = {"item-name.pancake-batter"},
            categories = {"crafting-with-fluid"},
            subgroup = "basic",
            order="ec",
            energy_required = 10,
            enabled = false,
            ingredients ={
				{type="item", name="flour", amount=3},
				{type="fluid", name="buttermilk", amount=10},
				{type="item", name="egg", amount=1},
				{type="item", name="cinnamon-sugar", amount=1}
            },
            results = {
                {type="item",name="pancake-batter",amount=1}
            },
        },
		
        {
            type = "recipe",
            name = "pancake-cooked",
			localised_name = {"item-name.pancake-cooked"},
            categories = {"smelting"},
            subgroup = "basic",
            order="ec",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="item",name="pancake-batter",amount=1}
            },
            results = {
                {type="item",name="pancake-cooked",amount=2}
            }
        },
        {
            type = "recipe",
            name = "pancakes-with-syrup",
			localised_name = {"item-name.pancakes-with-syrup"},
            categories = {"crafting-with-fluid"},
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
                {type="item",name="pancakes-with-syrup",amount=2},
                {type="item",name="plastic-basket",amount=1, extra_count_fraction=0.8, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/pancakes-with-syrup.png",
			icon_size = 32,
        },
		
		{
			type = "recipe",
			name = "filo-dough",
			localised_name = {"item-name.filo-dough"},
			categories = {"crafting-with-fluid"},
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
			name = "baklava",
			localised_name = {"item-name.baklava"},
			categories = {"crafting-with-fluid"},
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
			name = "baklava-cooked",
			localised_name = {"item-name.baklava-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 5,
			ingredients = {{type="item", name="baklava", amount=1}},
			results = {{type="item", name="baklava-cooked", amount=1}}
		},
		
		
		{
			type = "recipe",
			name = "pumpkin-pie",
            localised_name = {"item-name.pumpkin-pie"},
			categories = {"crafting-with-fluid"},
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
                {type="item",name="metal-bucket",amount=1,independent_probability=0.9, ignored_by_productivity = 10}
            },
			icon = "__baketorio_plus__/graphics/pumpkin-pie.png",
			icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "pumpkin-pie-cooked",
			localised_name = {"item-name.pumpkin-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="pumpkin-pie", amount=1}},
			results = {{type="item", name="pumpkin-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "pumpkin-pie-cooked-with-ice-cream",
			localised_name = {"item-name.pumpkin-pie-cooked-with-ice-cream"},
			categories = {"smelting"},
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
			name = "pumpkin-batter",
            localised_name = {"item-name.pumpkin-batter"},
			categories = {"advanced-crafting"},
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
                {type="item",name="metal-bucket",amount=1,independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/pumpkin-batter.png",
			icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "pumpkin-cookie",
			localised_name = {"item-name.pumpkin-cookie"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type="item", name="pumpkin-batter", amount=1},
			},
			results = {{type="item", name="pumpkin-cookie", amount=8}}
		},
		{
			type = "recipe",
			name = "pumpkin-cookie-cooked",
			localised_name = {"item-name.pumpkin-cookie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 3,
			ingredients = {{type="item", name="pumpkin-cookie", amount=1}},
			results = {{type="item", name="pumpkin-cookie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "pumpkin-cookie-glazed",
			localised_name = {"item-name.pumpkin-cookie-glazed"},
			categories = {"crafting"},
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
			name = "pecan-pie",
			localised_name = {"item-name.pecan-pie"},
			categories = {"crafting-with-fluid"},
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
			name = "pecan-pie-cooked",
			localised_name = {"item-name.pecan-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="pecan-pie", amount=1}},
			results = {{type="item", name="pecan-pie-cooked", amount=1}}
		},
		
		
		
        {
            type = "recipe",
            name = "pig",
            localised_name = {"item-name.pig"},
            order = "e",
            categories = {"organic-synth-recipes"},
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
            name = "breed-pig",
            order = "f",
            categories = {"organic-synth-recipes"},
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
			name = "beef",
			localised_name = {"item-name.beef"},
			categories = {"butcher"},
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
			name = "pork",
			localised_name = {"item-name.pork"},
			categories = {"butcher"},
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
			name = "chicken-meat",
			localised_name = {"item-name.chicken-meat"},
			categories = {"butcher"},
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
			name = "mutton",
			localised_name = {"item-name.mutton"},
			categories = {"butcher"},
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
			name = "meat-pie-beef",
			localised_name = {"recipe-name.meat-pie-beef"},
			categories = {"crafting-with-fluid"},
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
                {type="item",name="plastic-bin",amount=2,extra_count_fraction=0.7, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/meat-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "meat-pie-mutton",
			localised_name = {"recipe-name.meat-pie-mutton"},
			categories = {"crafting-with-fluid"},
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
                {type="item",name="plastic-bin",amount=3,extra_count_fraction=0.6, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/meat-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "meat-pie-cooked",
			localised_name = {"item-name.meat-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="meat-pie", amount=1}},
			results = {{type="item", name="meat-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "chicken-pot-pie",
			localised_name = {"item-name.chicken-pot-pie"},
			categories = {"crafting-with-fluid"},
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
                {type="item",name="plastic-bin",amount=1,independent_probability=0.9, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/chicken-pot-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "chicken-pot-pie-cooked",
			localised_name = {"item-name.chicken-pot-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 30,
			ingredients = {{type="item", name="chicken-pot-pie", amount=1}},
			results = {{type="item", name="chicken-pot-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "sausage-roll",
			localised_name = {"item-name.sausage-roll"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 15,
			ingredients = {
                {type="item",name="buttered-dough-1",amount=2},
                {type="item",name="pork",amount=3},
			},
			results = {
				{type="item", name="sausage-roll", amount=6},
                {type="item",name="plastic-bin",amount=2,extra_count_fraction=0.7, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/sausage-roll.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "sausage-roll-cooked",
			localised_name = {"item-name.sausage-roll-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 20,
			ingredients = {{type="item", name="sausage-roll", amount=1}},
			results = {{type="item", name="sausage-roll-cooked", amount=1}}
		},
		
			
			
			
--[[
			meringue -> egg, sugar, and cream
			
			also, meringue cookies (just baked meringue) in the meringue tech
			
			lemon-meringue-pie 
			]]
		{
			type = "recipe",
			name = "meringue",
			localised_name = {"item-name.meringue"},
			categories = {"crafting-with-fluid"},
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
			name = "meringue-cookies",
			localised_name = {"item-name.meringue-cookies"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 15,
			ingredients = {{type="item", name="meringue", amount=1}},
			results = {{type="item", name="meringue-cookies", amount=1}}
		},
		
		
		--  lemon tarts (bars) made with slightly buttered dough and lemon curd
		{
			type = "recipe",
			name = "apple-fritter",
			localised_name = {"item-name.apple-fritter"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="fryer-dough",amount=2},
                {type="item",name="cinnamon-sugar",amount=1},
                {type="item",name="apples",amount=1},
			},
			results = {
				{type="item", name="apple-fritter", amount=2},
				{type="item", name="bushel-basket", amount=1, independent_probability=0.6, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/apple-fritter.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "apple-fritter-cooked",
			localised_name = {"item-name.apple-fritter-cooked"},
			categories = {"chemistry"},
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
			name = "apple-fritter-glazed",
			localised_name = {"item-name.apple-fritter-glazed"},
			categories = {"crafting"},
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
			name = "apple-pie",
			localised_name = {"item-name.apple-pie"},
			categories = {"crafting"},
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
				{type="item", name="bushel-basket", amount=1, extra_count_fraction=0.2, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/apple-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "apple-pie-cooked",
			localised_name = {"item-name.apple-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="apple-pie", amount=1}},
			results = {{type="item", name="apple-pie-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "apple-pie-cooked-with-ice-cream",
			localised_name = {"item-name.apple-pie-cooked-with-ice-cream"},
			categories = {"crafting"},
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
			name = "peach-cobbler",
			localised_name = {"item-name.peach-cobbler"},
			categories = {"crafting-with-fluid"},
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
				{type="item", name="bushel-basket", amount=1, independent_probability=0.6, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/peach-cobbler.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "peach-cobbler-cooked",
			localised_name = {"item-name.peach-cobbler-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="peach-cobbler", amount=1}},
			results = {{type="item", name="peach-cobbler-cooked", amount=1}}
		},
		{
			type = "recipe",
			name = "peach-cobbler-cooked-with-ice-cream",
			localised_name = {"item-name.peach-cobbler-cooked-with-ice-cream"},
			categories = {"crafting"},
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
			name = "lemon-curd",
			localised_name = {"item-name.lemon-curd"},
			categories = {"chemistry"},
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
			name = "lemon-tart",
			localised_name = {"item-name.lemon-tart"},
			categories = {"crafting"},
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="buttered-dough-1",amount=1},
                {type="item",name="lemon-curd",amount=1},
			},
			results = {
				{type="item", name="lemon-tart", amount=2},
				{type="item", name="plastic-bin", amount=1, independent_probability=0.9, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/lemon-tart.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "lemon-tart-cooked",
			localised_name = {"item-name.lemon-tart-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="lemon-tart", amount=1}},
			results = {{type="item", name="lemon-tart-cooked", amount=1}}
		},
		
		{
			type = "recipe",
			name = "lemon-meringue-pie",
			localised_name = {"item-name.lemon-meringue-pie"},
			categories = {"crafting"},
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
				{type="item", name="plastic-bin", amount=1, independent_probability=0.9, ignored_by_productivity = 10}
			},
            icon="__baketorio_plus__/graphics/lemon-meringue-pie.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		{
			type = "recipe",
			name = "lemon-meringue-pie-cooked",
			localised_name = {"item-name.lemon-meringue-pie-cooked"},
			categories = {"smelting"},
			enabled = false,
			energy_required = 10,
			ingredients = {{type="item", name="lemon-meringue-pie", amount=1}},
			results = {{type="item", name="lemon-meringue-pie-cooked", amount=1}}
		},
		
		
		
		{
			type = "recipe",
			name = "fruit-baking-science-pack",
			localised_name = {"item-name.fruit-baking-science-pack"},
			categories = {"crafting"},
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
			categories = {"crafting"},
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
			categories = {"crafting"},
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
            name = "sheep",
            localised_name = {"item-name.sheep"},
            order = "e",
            categories = {"organic-synth-recipes"},
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
            name = "breed-sheep",
            order = "f",
            categories = {"organic-synth-recipes"},
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
			name = "flour-box",
			localised_name = {"item-name.flour-box"},
			categories = {"crafting"},
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
            name = "hardtack-box",
            localised_name = {"recipe-name.hardtack-box"},
            categories = {"smelting"},
            subgroup = "bread",
            energy_required = 2,
            enabled = true,
            ingredients ={
                {type="item",name="flour-box",amount=1}
            },
            results = {
                {type="item",name="hardtack",amount=2},
				{type="item", name="wooden-chest", amount=1, independent_probability=0.75, ignored_by_productivity = 10}
            },
            icon = "__baketorio__/graphics/hardtack.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
        },
		{
			type = "recipe",
			name = "basic-dough-box",
			localised_name = {"recipe-name.dough-box"},
			categories = {"crafting-with-fluid"},
			enabled = false,
			energy_required = 2,
			ingredients = {
                {type="item",name="flour-box",amount=1},
                {type="fluid",name="water",amount=5},
			},
			results = {
				{type="item", name="basic-dough", amount=1},
				{type="item", name="wooden-chest", amount=1, independent_probability=0.75, ignored_by_productivity = 10}
			},
            icon="__baketorio__/graphics/dough.png",
            icon_size = 32,
            group = "food",
            subgroup = "ingredient",
		},
		
		{
			type = "recipe",
			name = "yarn",
			localised_name = {"item-name.yarn"},
			categories = {"crafting"},
			enabled = false,
			allow_productivity = true,
			energy_required = 3,
			ingredients = {
                {type="item",name="wool",amount=1},
			},
			results = {
				{type="item", name="yarn", amount=20}
			},
		},
		{
			type = "recipe",
			name = "fabric",
			localised_name = {"item-name.fabric"},
			categories = {"crafting"},
			enabled = false,
			allow_productivity = true,
			energy_required = 2,
			ingredients = {
                {type="item",name="yarn",amount=4},
			},
			results = {
				{type="item", name="fabric", amount=1}
			},
		},
		{
			type = "recipe",
			name = "bag",
			localised_name = {"item-name.bag"},
			categories = {"crafting"},
			enabled = false,
			allow_productivity = true,
			energy_required = 2,
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
data.raw["recipe"]["cheese"].ingredients ={
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

--  add buttermilk
table.insert(data.raw["recipe"]["butter-solidification"].results, {type="fluid",name="buttermilk",amount=2} )
data.raw["recipe"]["butter-solidification"].icon = "__baketorio__/graphics/butter.png"
data.raw["recipe"]["butter-solidification"].icon_size = 32


--  add wrappers/bins
table.insert(data.raw["recipe"]["butter-solidification"].ingredients, {type="item",name="paper-wrapper",amount=1} )
table.insert(data.raw["recipe"]["cheese"].ingredients, {type="item",name="paper-wrapper",amount=5} )  --  recipe makes 5 cheese so need equal wrappers
table.insert(data.raw["recipe"]["basic-batter-cupcake"].ingredients, {type="item",name="paper-wrapper",amount=2} )  --  set with 2 because it will make 2 cupcakes
table.insert(data.raw["recipe"]["chocolate-batter-cupcake"].ingredients, {type="item",name="paper-wrapper",amount=2} )
table.insert(data.raw["recipe"]["advanced-cake-batter-cupcake"].ingredients, {type="item",name="paper-wrapper",amount=2} )
table.insert(data.raw["recipe"]["plain-ice-cream"].ingredients, {type="item",name="plastic-bin",amount=1} )

--  double cupcake outputs
data.raw["recipe"]["basic-batter-cupcake"].results = {{type="item",name="basic-batter-cupcake",amount=2}}
data.raw["recipe"]["chocolate-batter-cupcake"].results = {{type="item",name="chocolate-batter-cupcake",amount=2}}
data.raw["recipe"]["advanced-cake-batter-cupcake"].results = {{type="item",name="advanced-cake-batter-cupcake",amount=2}}

--  fry donuts now
table.insert(data.raw["recipe"]["fryer-dough-doughnut-cooked"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["fryer-dough-doughnut-cooked"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["fryer-dough-doughnut-cooked"].categories = {"chemistry"}
data.raw["recipe"]["fryer-dough-doughnut-cooked"].icon = "__baketorio__/graphics/fryer-dough-doughnut-cooked.png"
data.raw["recipe"]["fryer-dough-doughnut-cooked"].icon_size = 32
table.insert(data.raw["recipe"]["chocolate-batter-doughnut-cooked"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["chocolate-batter-doughnut-cooked"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["chocolate-batter-doughnut-cooked"].categories = {"chemistry"}
data.raw["recipe"]["chocolate-batter-doughnut-cooked"].icon = "__baketorio__/graphics/chocolate-batter-doughnut-cooked.png"
data.raw["recipe"]["chocolate-batter-doughnut-cooked"].icon_size = 32
table.insert(data.raw["recipe"]["blueberry-batter-doughnut-cooked"].ingredients, {type="fluid",name="light-oil",amount=8} )
table.insert(data.raw["recipe"]["blueberry-batter-doughnut-cooked"].results, {type="fluid",name="light-oil",amount=5} )
data.raw["recipe"]["blueberry-batter-doughnut-cooked"].categories = {"chemistry"}
data.raw["recipe"]["blueberry-batter-doughnut-cooked"].icon = "__baketorio__/graphics/blueberry-batter-doughnut-cooked.png"
data.raw["recipe"]["blueberry-batter-doughnut-cooked"].icon_size = 32

--  chocolate chips
data.raw["recipe"]["chocolate-chip-batter"].ingredients ={
                {type="item",name="basic-batter",amount=1},
                {type="item",name="chocolate-chips",amount=2}
            }
			
--  ..nah
--[[
data.raw["recipe"]["basic"].ingredients = {
            {type="item", name="flour", amount=3},
            {type="fluid", name="milk", amount=5},
            {type="item", name="butter", amount=1},
            {type="item", name="egg", amount=1},
            {type="item", name="sugar", amount=2}  --  more sugar
        }
]]--

table.insert(data.raw["recipe"]["blueberry-pie"].ingredients, {type="item",name="pie-tin",amount=1} )
table.insert(data.raw["recipe"]["blueberry-pie"].results, {type="item",name="plastic-basket",amount_min=8,amount_max=10, ignored_by_productivity = 10} )
data.raw["recipe"]["blueberry-pie"].icon = "__baketorio__/graphics/blueberry-pie.png"
data.raw["recipe"]["blueberry-pie"].icon_size = 32
data.raw["recipe"]["blueberry-pie"].localised_name = {"item-name.blueberry-pie"}

table.insert(data.raw["recipe"]["strawberry-pie"].ingredients, {type="item",name="pie-tin",amount=1} )
table.insert(data.raw["recipe"]["strawberry-pie"].results, {type="item",name="plastic-basket",amount=2,extra_count_fraction=0.7, ignored_by_productivity = 10} )
data.raw["recipe"]["strawberry-pie"].icon = "__baketorio__/graphics/strawberry-pie.png"
data.raw["recipe"]["strawberry-pie"].icon_size = 32
data.raw["recipe"]["strawberry-pie"].localised_name = {"item-name.strawberry-pie"}

table.insert(data.raw["recipe"]["blueberry-batter"].results, {type="item",name="plastic-basket",amount=1,independent_probability=0.9, ignored_by_productivity = 10} )
data.raw["recipe"]["blueberry-batter"].localised_name = {"item-name.blueberry-batter"}

table.insert(data.raw["recipe"]["advanced-cake-batter"].results, {type="item",name="plastic-basket",amount=1,independent_probability=0.9, ignored_by_productivity = 10} )
data.raw["recipe"]["advanced-cake-batter"].icon = "__baketorio__/graphics/advanced-cake-batter.png"
data.raw["recipe"]["advanced-cake-batter"].icon_size = 32
data.raw["recipe"]["advanced-cake-batter"].localised_name = {"item-name.advanced-cake-batter"}


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
table.insert(data.raw["recipe"]["flour"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["sugar"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["cinnamon-sugar"].ingredients, {type="item",name="bag",amount=1} )
table.insert(data.raw["recipe"]["cocoa-powder"].ingredients, {type="item",name="bag",amount=2} )
--  add bags to recipe results
table.insert(data.raw["recipe"]["hardtack"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["cobbler-mixture"].results, {type="item",name="bag",amount=4,extra_count_fraction=0.5, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["gravy-beef"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["gravy-pork"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["gravy-chicken"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["gravy-mutton"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["filo-dough"].results, {type="item",name="bag",amount=2,extra_count_fraction=0.4, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["pumpkin-batter"].results, {type="item",name="bag",amount_min=3,amount_max=5, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["basic-batter"].results, {type="item",name="bag",amount=3,extra_count_fraction=0.2, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["basic-dough"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["sugar-dough"].results, {type="item",name="bag",amount=2,extra_count_fraction=0.4, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["egg-dough"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["fryer-dough"].results, {type="item",name="bag",amount=2,extra_count_fraction=0.4, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["cinnamon-dough"].results, {type="item",name="bag",amount=2,extra_count_fraction=0.4, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["pancake-batter"].results, {type="item",name="bag",amount=3,extra_count_fraction=0.2, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["sugar-water"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["white-chocolate-sauce"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["meringue"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["frosting"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["plain-ice-cream"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["apple-fritter"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["pumpkin-pie"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["fryer-dough-bun"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["cinnamon-sugar-doughnut"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["chocolate-sauce"].results, {type="item",name="bag",amount_min=18,amount_max=30, ignored_by_productivity = 100} )
table.insert(data.raw["recipe"]["chocolate-batter"].results, {type="item",name="bag",amount=1,extra_count_fraction=0.6, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["chocolate-ice-cream"].results, {type="item",name="bag",amount=2,extra_count_fraction=0.4, ignored_by_productivity = 10} )
table.insert(data.raw["recipe"]["chocolate-chips"].results, {type="item",name="bag",amount=1,independent_probability=0.8, ignored_by_productivity = 10} )
		

data.raw["recipe"]["cobbler-mixture"].icon="__baketorio_plus__/graphics/cobbler-mixture.png"
data.raw["recipe"]["gravy-beef"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["gravy-pork"].icon="__baketorio_plus__/graphics/gravy.png"

data.raw["recipe"]["gravy-chicken"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["gravy-mutton"].icon="__baketorio_plus__/graphics/gravy.png"
data.raw["recipe"]["filo-dough"].icon="__baketorio_plus__/graphics/filo-dough.png"

data.raw["recipe"]["pumpkin-batter"].icon="__baketorio_plus__/graphics/pumpkin-batter.png"
data.raw["recipe"]["basic-batter"].icon="__baketorio__/graphics/cakebatter.png"
data.raw["recipe"]["basic-dough"].icon="__baketorio__/graphics/basic-dough.png"
data.raw["recipe"]["sugar-dough"].icons=data.raw["item"]["sugar-dough"].icons

data.raw["recipe"]["egg-dough"].icons=data.raw["item"]["egg-dough"].icons
data.raw["recipe"]["fryer-dough"].icon="__baketorio__/graphics/fryer-dough.png"
data.raw["recipe"]["cinnamon-dough"].icons=data.raw["item"]["cinnamon-dough"].icons
data.raw["recipe"]["pancake-batter"].icon="__baketorio_plus__/graphics/pancake-batter.png"

data.raw["recipe"]["sugar-water"].icon="__baketorio_plus__/graphics/sugar-water.png"
data.raw["recipe"]["white-chocolate-sauce"].icon="__baketorio_plus__/graphics/white-chocolate-sauce.png"
data.raw["recipe"]["meringue"].icon="__baketorio_plus__/graphics/meringue.png"
data.raw["recipe"]["frosting"].icon="__baketorio__/graphics/frosting.png"

data.raw["recipe"]["plain-ice-cream"].icon="__baketorio__/graphics/plain-ice-cream.png"
data.raw["recipe"]["apple-fritter"].icon="__baketorio_plus__/graphics/apple-fritter.png"
data.raw["recipe"]["pumpkin-pie"].icon="__baketorio_plus__/graphics/pumpkin-pie.png"
data.raw["recipe"]["fryer-dough-bun"].icon="__baketorio__/graphics/fryer-dough-bun.png"

data.raw["recipe"]["cinnamon-sugar-doughnut"].icon="__baketorio__/graphics/cinnamon-sugar-doughnut.png"
data.raw["recipe"]["chocolate-sauce"].icon="__baketorio_plus__/graphics/chocolate-sauce.png"
data.raw["recipe"]["chocolate-batter"].icon="__baketorio__/graphics/chocolate-batter.png"

data.raw["recipe"]["chocolate-ice-cream"].icon="__baketorio_plus__/graphics/chocolate-ice-cream.png"
data.raw["recipe"]["chocolate-chips"].icon="__baketorio_plus__/graphics/chocolate-chips.png"
data.raw["recipe"]["hardtack"].icon="__baketorio__/graphics/hardtack.png"


local list = {"cobbler-mixture", "gravy-beef", "gravy-pork",
	"gravy-chicken", "gravy-mutton", "filo-dough",
	"pumpkin-batter", "basic-batter", "basic-dough", "sugar-dough",
	"egg-dough", "fryer-dough", "cinnamon-dough", "pancake-batter",
	"sugar-water", "white-chocolate-sauce", "meringue", "frosting",
	"plain-ice-cream", "apple-fritter", "pumpkin-pie", "fryer-dough-bun",
	"cinnamon-sugar-doughnut", "chocolate-sauce", "chocolate-batter",
	"chocolate-ice-cream", "chocolate-chips", "hardtack"}

for key,value in pairs(list) do
	data.raw["recipe"][value].icon_size = 32
	data.raw["recipe"][value].group = "food"
	data.raw["recipe"][value].subgroup = "ingredient"
end



--  double speed for milk filtering
data.raw["recipe"]["milk-filtering"].energy_required = data.raw["recipe"]["milk-filtering"].energy_required/2

--  add wood to rail recipe
table.insert(data.raw["recipe"]["rail"].ingredients, {type="item",name="wood",amount=1} )

for _, v in ipairs(prod_recipes) do
    data.raw["recipe"][v].allow_productivity = true
end
