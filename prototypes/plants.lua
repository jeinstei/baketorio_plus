
local prod_recipes = {
  "nuts-seeds",
  "nuts-recipe",
  "nuts-recipe-water",
  "nuts-recipe-fertilizer",
  "pumpkin-seeds",
  "pumpkin-recipe",
  "pumpkin-recipe-water",
  "pumpkin-recipe-fertilizer",
  
  "wood-recipe",
  "wood-recipe-water",
  "wood-recipe-fertilizer",
			
  "wheat-recipe-water",
  "wheat-recipe-fertilizer",
  "sugarcane-recipe-water",
  "sugarcane-recipe-fertilizer",
  "cocoa-beans-recipe-water",
  "cocoa-beans-recipe-fertilizer",
  "cinnamon-recipe-water",
  "cinnamon-recipe-fertilizer",
  "blueberries-recipe-fertilizer",
  "blueberries-recipe-water",
  "strawberries-recipe-water",
  "strawberries-recipe-fertilizer",
  
  "egg-water-recipe",
  "egg-water-food-recipe",
  "u-milk-water-recipe",
  "u-milk-water-food-recipe",
  
  "apple-seeds",
  "apple-recipe",
  "apple-recipe-water",
  "apple-recipe-fertilizer",
  "lemon-seeds",
  "lemon-recipe",
  "lemon-recipe-water",
  "lemon-recipe-fertilizer",
  "peach-seeds",
  "peach-recipe",
  "peach-recipe-water",
  "peach-recipe-fertilizer",
}

for _, v in ipairs(prod_recipes) do
	baketorio.add_to_prod_mod(v)
end


local wheatEnergy = data.raw["recipe"]["wheat-recipe"].energy_required
local sugarcaneEnergy = data.raw["recipe"]["sugarcane-recipe"].energy_required
local cocoaBeansEnergy = data.raw["recipe"]["cocoa-beans-recipe"].energy_required
local cinnamonEnergy = data.raw["recipe"]["cinnamon-recipe"].energy_required
local blueberriesEnergy = data.raw["recipe"]["blueberries-recipe"].energy_required
local strawberryEnergy = data.raw["recipe"]["strawberries-recipe"].energy_required

local eggEnergy = data.raw["recipe"]["egg-recipe"].energy_required
local milkEnergy = data.raw["recipe"]["u-milk-recipe"].energy_required

local nutsEnergy = 120
local pumpkinEnergy = 60

local woodEnergy = 45;

local appleEnergy = 10;
local peachEnergy = 15;
local lemonEnergy = 20;



data:extend (
    {
		{
			type = "recipe",
			name = "nuts-seeds",
			localised_name = {"item-name.nuts"},
			order="j",
			category = "organic-synth-recipes",
			subgroup = "seeds",
			energy_required = 60,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient6",amount=1}
			},
			results = {
				{type="item",name="nuts",amount=1}
			}
		},
		{
			type = "recipe",
			name = "nuts-recipe",
			localised_name = {"item-name.nuts"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = nutsEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="nuts",amount=2},
				{type="item",name="nutrient5",amount=1}
			},
			results = {
				{type="item",name="nuts",amount=20}
			}
		},
		{
			type = "recipe",
			name = "nuts-recipe-water",
			localised_name = {"item-name.nuts"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = nutsEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="nuts",amount=2},
				{type="item",name="nutrient5",amount=1},
				{type="fluid",name="water",amount=25}
			},
			results = {
				{type="item",name="nuts",amount=20}
			}
		},
		{
			type = "recipe",
			name = "nuts-recipe-fertilizer",
			localised_name = {"item-name.nuts"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = nutsEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="nuts",amount=2},
				{type="item",name="nutrient5",amount=1},
				{type="fluid",name="fertilized-water",amount=20}
			},
			results = {
				{type="item",name="nuts",amount=40}
			}
		},
		
		{
			type = "recipe",
			name = "pumpkin-seeds",
			localised_name = {"item-name.pumpkin-seeds"},
			order="j",
			category = "organic-synth-recipes",
			subgroup = "seeds",
			energy_required = 360,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient6",amount=10}
			},
			results = {
				{type="item",name="pumpkin-seeds",amount=1}
			}
		},
		{
			type = "recipe",
			name = "pumpkin-recipe",
			localised_name = {"item-name.pumpkin"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = pumpkinEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="pumpkin-seeds",amount=1},
				{type="item",name="nutrient5",amount=2}
			},
			results = {
				{type="item",name="pumpkin",amount=1}
			}
		},
		{
			type = "recipe",
			name = "pumpkin-recipe-water",
			localised_name = {"item-name.pumpkin"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = pumpkinEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="pumpkin-seeds",amount=1},
				{type="item",name="nutrient5",amount=2},
				{type="fluid",name="water",amount=25}
			},
			results = {
				{type="item",name="pumpkin",amount=1}
			}
		},
		{
			type = "recipe",
			name = "pumpkin-recipe-fertilizer",
			localised_name = {"item-name.pumpkin"},
			order="h",
			category = "greenhouse-recipes",
			group = "wood",
			subgroup = "wood",
			energy_required = pumpkinEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="pumpkin-seeds",amount=1},
				{type="item",name="nutrient5",amount=2},
				{type="fluid",name="fertilized-water",amount=25}
			},
			results = {
				{type="item",name="pumpkin",amount=2}
			}
		},
		
		
		{
			type = "recipe",
			name = "wood-recipe",
			localised_name = {"item-name.wood"},
			order="h",
			category = "greenhouse-recipes",
			group = "wood",
			subgroup = "wood",
			energy_required = woodEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient1",amount=1}
			},
			results = {
				{type="item",name="wood",amount_min=2,amount_max=3}
			}
		},
		{
			type = "recipe",
			name = "wood-recipe-water",
			localised_name = {"item-name.wood"},
			order="h",
			category = "greenhouse-recipes",
			group = "wood",
			subgroup = "wood",
			energy_required = woodEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="water",amount=15}
			},
			results = {
				{type="item",name="wood",amount_min=2,amount_max=3}
			}
		},
		{
			type = "recipe",
			name = "wood-recipe-fertilizer",
			localised_name = {"item-name.wood"},
			order="h",
			category = "greenhouse-recipes",
			group = "wood",
			subgroup = "wood",
			energy_required = woodEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="fertilized-water",amount=5}
			},
			results = {
				{type="item",name="wood",amount_min=4,amount_max=6}
			}
		},
		
		
		
		
		
		
		{
			type = "recipe",
			name = "wheat-recipe-water",
			localised_name = {"item-name.wheat"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="a",
			energy_required = wheatEnergy,
			enabled = true,
			ingredients ={
				{type="item",name="wheat-seeds",amount=1},
				{type="fluid",name="water",amount=5}
			},
			results = {
				{type="item",name="wheat-seeds",amount=1,probability = 0.1},
				{type="item",name="wheat-seeds",amount=1},
				{type="item",name="wheat",amount_min=3,amount_max=5}
			},
			icon = "__baketorio__/graphics/wheat.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "wheat-recipe-fertilizer",
			localised_name = {"item-name.wheat"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="a",
			energy_required = wheatEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="wheat-seeds",amount=1},
				{type="fluid",name="fertilized-water",amount=3}
			},
			results = {
				{type="item",name="wheat-seeds",amount=1,probability = 0.1},
				{type="item",name="wheat-seeds",amount=1},
				{type="item",name="wheat",amount_min=6,amount_max=10}
			},
			icon = "__baketorio__/graphics/wheat.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "sugarcane-recipe-water",
			localised_name = {"item-name.sugarcane"},
			order="c",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = sugarcaneEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="sugarcane-seeds",amount=1},
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="water",amount=5}
			},
			results = {
				{type="item",name="sugarcane-seeds",amount=1,probability = 0.15},
				{type="item",name="sugarcane-seeds",amount=1},
				{type="item",name="sugarcane",amount_min=3,amount_max=4}
			},
			icon = "__baketorio__/graphics/sugarcane.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "sugarcane-recipe-fertilizer",
			localised_name = {"item-name.sugarcane"},
			order="c",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = sugarcaneEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="sugarcane-seeds",amount=1},
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="fertilized-water",amount=5}
			},
			results = {
				{type="item",name="sugarcane-seeds",amount=1,probability = 0.15},
				{type="item",name="sugarcane-seeds",amount=1},
				{type="item",name="sugarcane",amount_min=6,amount_max=8}
			},
			icon = "__baketorio__/graphics/sugarcane.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "cocoa-beans-recipe-water",
			localised_name = {"item-name.cocoa-beans"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = cocoaBeansEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="cocoa-bean-seeds",amount=1},
				{type="item",name="nutrient3",amount=1},
				{type="fluid",name="water",amount=15}
			},
			results = {
				{type="item",name="cocoa-bean-seeds",amount=1,probability = 0.05},
				{type="item",name="cocoa-bean-seeds",amount=1},
				{type="item",name="cocoa-beans",amount_min=2,amount_max=5}
			},
			icon = "__baketorio__/graphics/cocoa-beans.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "cocoa-beans-recipe-fertilizer",
			localised_name = {"item-name.cocoa-beans"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = cocoaBeansEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="cocoa-bean-seeds",amount=1},
				{type="item",name="nutrient3",amount=1},
				{type="fluid",name="fertilized-water",amount=10}
			},
			results = {
				{type="item",name="cocoa-bean-seeds",amount=1,probability = 0.05},
				{type="item",name="cocoa-bean-seeds",amount=1},
				{type="item",name="cocoa-beans",amount_min=4,amount_max=10}
			},
			icon = "__baketorio__/graphics/cocoa-beans.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "cinnamon-recipe-water",
			localised_name = {"item-name.cinnamon"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="j",
			energy_required = cinnamonEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="cinnamon-seeds",amount=1},
				{type="item",name="nutrient4",amount=1},
				{type="fluid",name="water",amount=15}
			},
			results = {
				{type="item",name="cinnamon-seeds",amount=1,probability = 0.01},
				{type="item",name="cinnamon-seeds",amount=1},
				{type="item",name="cinnamon",amount_min=2,amount_max=4},
				{type="item",name="wood",amount_min=2,amount_max=4}
			},
			icon = "__baketorio__/graphics/cinnamon.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "cinnamon-recipe-fertilizer",
			localised_name = {"item-name.cinnamon"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="j",
			energy_required = cinnamonEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="cinnamon-seeds",amount=1},
				{type="item",name="nutrient4",amount=1},
				{type="fluid",name="fertilized-water",amount=10}
			},
			results = {
				{type="item",name="cinnamon-seeds",amount=1,probability = 0.01},
				{type="item",name="cinnamon-seeds",amount=1},
				{type="item",name="cinnamon",amount_min=4,amount_max=8},
				{type="item",name="wood",amount_min=3,amount_max=6}
			},
			icon = "__baketorio__/graphics/cinnamon.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "blueberries-recipe-water",
			localised_name = {"item-name.blueberries"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="l",
			energy_required = blueberriesEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="blueberry-seeds",amount=1},
				{type="item",name="plastic-basket",amount=1},
				{type="item",name="nutrient5",amount=1},
				{type="fluid",name="water",amount=5}
			},
			results = {
				{type="item",name="blueberry-seeds",amount=1,probability = 0.02},
				{type="item",name="blueberry-seeds",amount=1},
				{type="item",name="blueberries",amount=1}
			},
			icon = "__baketorio__/graphics/blueberries.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "blueberries-recipe-fertilizer",
			localised_name = {"item-name.blueberries"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="l",
			energy_required = blueberriesEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="blueberry-seeds",amount=1},
				{type="item",name="plastic-basket",amount=2},
				{type="item",name="nutrient5",amount=1},
				{type="fluid",name="fertilized-water",amount=15}
			},
			results = {
				{type="item",name="blueberry-seeds",amount=1,probability = 0.02},
				{type="item",name="blueberry-seeds",amount=1},
				{type="item",name="blueberries",amount=2}
			},
			icon = "__baketorio__/graphics/blueberries.png",
			icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "strawberries-recipe-water",
			localised_name = {"item-name.strawberries"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="m",
			energy_required = strawberryEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="strawberry-seeds",amount=1},
				{type="item",name="plastic-basket",amount=1},
				{type="item",name="nutrient5",amount=5},
				{type="fluid",name="water",amount=10}
			},
			results = {
				{type="item",name="strawberry-seeds",amount=1,probability = 0.04},
				{type="item",name="strawberry-seeds",amount=1},
				{type="item",name="strawberries",amount=1}
			},
			icon = "__baketorio__/graphics/strawberries.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "strawberries-recipe-fertilizer",
			localised_name = {"item-name.strawberries"},
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			order="m",
			energy_required = strawberryEnergy / 3,
			enabled = false,
			ingredients ={
				{type="item",name="strawberry-seeds",amount=1},
				{type="item",name="plastic-basket",amount=2},
				{type="item",name="nutrient5",amount=5},
				{type="fluid",name="fertilized-water",amount=15}
			},
			results = {
				{type="item",name="strawberry-seeds",amount=1,probability = 0.04},
				{type="item",name="strawberry-seeds",amount=1},
				{type="item",name="strawberries",amount=2}
			},
			icon = "__baketorio__/graphics/strawberries.png",
			icon_size = 32,
		},
		
		
		--  gotta feed and water the animals for bonuses (water for regular and food for double)
        {
            type = "recipe",
            name = "egg-water-recipe",
            localised_name = {"item-name.egg"},
            order = "e",
            category = "greenhouse-recipes",
            subgroup = "ingredient",
            energy_required = eggEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="chicken",amount=1},
                {type="item",name="nutrient1",amount=5},
                {type="fluid",name="water",amount=5}
            },
            results = {
                {type="item",name="egg",amount=1},
                {type="item",name="chicken",amount=1}
            },
            icon = "__baketorio__/graphics/egg.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "egg-water-food-recipe",
            localised_name = {"item-name.egg"},
            order = "e",
            category = "greenhouse-recipes",
            subgroup = "ingredient",
            energy_required = eggEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="chicken",amount=1},
                {type="item",name="nutrient1",amount=10},
                {type="item",name="wheat",amount=3},
                {type="fluid",name="water",amount=5}
            },
            results = {
                {type="item",name="egg",amount=3},
                {type="item",name="chicken",amount=1}
            },
            icon = "__baketorio__/graphics/egg.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "u-milk-water-recipe",
            localised_name = {"fluid-name.unpasteurized-milk"},
            category = "greenhouse-recipes",
            subgroup = "fluid-ingredient",
            energy_required = milkEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="cow",amount=1},
                {type="item",name="nutrient2",amount=1},
                {type="fluid",name="water",amount=20}
            },
            results = {
                {type="item",name="cow",amount=1},
                {type="fluid", name="unpasteurized-milk", amount=150},
            },
            icon = "__baketorio__/graphics/unpasteurized_milk.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "u-milk-water-food-recipe",
            localised_name = {"fluid-name.unpasteurized-milk"},
            category = "greenhouse-recipes",
            subgroup = "fluid-ingredient",
            energy_required = milkEnergy,
            enabled = false,
            ingredients ={
                {type="item",name="cow",amount=1},
                {type="item",name="nutrient2",amount=2},
                {type="item",name="wheat",amount=6},
                {type="fluid",name="water",amount=20}
            },
            results = {
                {type="item",name="cow",amount=1},
                {type="fluid", name="unpasteurized-milk", amount=450},
            },
            icon = "__baketorio__/graphics/unpasteurized_milk.png",
            icon_size = 32,
        },
		
		
		--  apples, peaches, lemons
		{
			type = "recipe",
			name = "apple-seeds",
			localised_name = {"item-name.apple-seeds"},
			order="j",
			category = "organic-synth-recipes",
			subgroup = "seeds",
			energy_required = 60,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient2",amount=1}
			},
			results = {
				{type="item",name="apple-seeds",amount=1}
			}
		},
		{
			type = "recipe",
			name = "apples-recipe",
			localised_name = {"item-name.apples"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = appleEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="nutrient1",amount=1}
			},
			results = {
				{type="item",name="apples",amount=1},
				{type="item",name="apple-seeds",amount=1,probability = 0.04},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/apples.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "apples-recipe-water",
			localised_name = {"item-name.apples"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = appleEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="water",amount=25}
			},
			results = {
				{type="item",name="apples",amount=1},
				{type="item",name="apple-seeds",amount=1,probability = 0.04},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/apples.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "apples-recipe-fertilizer",
			localised_name = {"item-name.apples"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = appleEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=2},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="nutrient1",amount=1},
				{type="fluid",name="fertilized-water",amount=5}
			},
			results = {
				{type="item",name="apples",amount=2},
				{type="item",name="apple-seeds",amount=1,probability = 0.04},
				{type="item",name="apple-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/apples.png",
            icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "peach-seeds",
			localised_name = {"item-name.peach-seeds"},
			order="j",
			category = "organic-synth-recipes",
			subgroup = "seeds",
			energy_required = 60,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient2",amount=5}
			},
			results = {
				{type="item",name="peach-seeds",amount=1}
			}
		},
		{
			type = "recipe",
			name = "peaches-recipe",
			localised_name = {"item-name.peaches"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = peachEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="nutrient1",amount=3}
			},
			results = {
				{type="item",name="peaches",amount=1},
				{type="item",name="peach-seeds",amount=1,probability = 0.04},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/peaches.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "peaches-recipe-water",
			localised_name = {"item-name.peaches"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = peachEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="nutrient1",amount=3},
				{type="fluid",name="water",amount=25}
			},
			results = {
				{type="item",name="peaches",amount=1},
				{type="item",name="peach-seeds",amount=1,probability = 0.04},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/peaches.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "peaches-recipe-fertilizer",
			localised_name = {"item-name.peaches"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = peachEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=2},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="nutrient1",amount=3},
				{type="fluid",name="fertilized-water",amount=5}
			},
			results = {
				{type="item",name="peaches",amount=2},
				{type="item",name="peach-seeds",amount=1,probability = 0.04},
				{type="item",name="peach-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/peaches.png",
            icon_size = 32,
		},
		
		{
			type = "recipe",
			name = "lemon-seeds",
			localised_name = {"item-name.lemon-seeds"},
			order="j",
			category = "organic-synth-recipes",
			subgroup = "seeds",
			energy_required = 60,
			enabled = false,
			ingredients ={
				{type="item",name="nutrient3",amount=1}
			},
			results = {
				{type="item",name="lemon-seeds",amount=1}
			}
		},
		{
			type = "recipe",
			name = "lemons-recipe",
			localised_name = {"item-name.lemons"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = lemonEnergy*3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="nutrient2",amount=1}
			},
			results = {
				{type="item",name="lemons",amount=1},
				{type="item",name="lemon-seeds",amount=1,probability = 0.04},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/lemons.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "lemons-recipe-water",
			localised_name = {"item-name.lemons"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = lemonEnergy,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=1},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="nutrient2",amount=1},
				{type="fluid",name="water",amount=25}
			},
			results = {
				{type="item",name="lemons",amount=1},
				{type="item",name="lemon-seeds",amount=1,probability = 0.04},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/lemons.png",
            icon_size = 32,
		},
		{
			type = "recipe",
			name = "lemons-recipe-fertilizer",
			localised_name = {"item-name.lemons"},
			order="h",
			category = "greenhouse-recipes",
			subgroup = "ingredient",
			energy_required = lemonEnergy/3,
			enabled = false,
			ingredients ={
				{type="item",name="bushel-basket",amount=2},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="nutrient2",amount=1},
				{type="fluid",name="fertilized-water",amount=5}
			},
			results = {
				{type="item",name="lemons",amount=2},
				{type="item",name="lemon-seeds",amount=1,probability = 0.04},
				{type="item",name="lemon-seeds",amount=1},
				{type="item",name="wood",amount=1,probability = 0.1}
			},
            icon = "__baketorio_plus__/graphics/lemons.png",
            icon_size = 32,
		},
  
  
		--  give 1 + 1 at 10% wood for each
	}
)

--  local strawberryEnergy = data.raw["recipe"]["strawberries-recipe"].energy_required

--local strawberryEnergy = table.deepcopy(data.raw["recipe"]["strawberries-recipe"]).energy_required
		
data.raw["recipe"]["wheat-recipe"].energy_required = wheatEnergy * 3
data.raw["recipe"]["sugarcane-recipe"].energy_required = sugarcaneEnergy * 3
data.raw["recipe"]["cocoa-beans-recipe"].energy_required = cocoaBeansEnergy * 3
data.raw["recipe"]["cinnamon-recipe"].energy_required = cinnamonEnergy * 3
data.raw["recipe"]["blueberries-recipe"].energy_required = blueberriesEnergy * 3
data.raw["recipe"]["strawberries-recipe"].energy_required = strawberryEnergy * 3

--  data.raw["recipe"]["strawberries-recipe"].energy_required /= 3
--  data.raw["recipe"]["strawberries-recipe"].energy_required = data.raw["recipe"]["strawberries-recipe"].energy_required / 3

data.raw["recipe"]["u-milk-recipe"].energy_required = milkEnergy * 3
data.raw["recipe"]["egg-recipe"].energy_required = eggEnergy * 3

--  cinnamon gives wood back
table.insert(data.raw["recipe"]["cinnamon-recipe"].results, {type="item",name="wood",amount_min=2,amount_max=4})


table.insert(data.raw["recipe"]["strawberries-recipe"].ingredients, {type="item",name="plastic-basket",amount=1} )
--  data.raw["recipe"]["strawberries-recipe"].ingredients.add{{type="item",name="plastic-basket",amount=1}}
table.insert(data.raw["recipe"]["blueberries-recipe"].ingredients, {type="item",name="plastic-basket",amount=1} )
















