-- Add recipe names here to add them to productivity modules
local prod_recipes = {
  "sugar-water-recipe",
  "syrup-recipe",
  "fertilized-water-recipe",
  "vegetable-oil-wheat-recipe",
  "vegetable-oil-sugarcane-recipe",
  "vegetable-oil-cocoa-bean-recipe",
  "vegetable-oil-pumpkin-recipe",
  "vegetable-oil-nuts-recipe",
  "chocolate-sauce-recipe",
  "white-chocolate-sauce-recipe",
}

for _, v in ipairs(prod_recipes) do
	baketorio.add_to_prod_mod(v)
end

data:extend(
    {
        {
            type = "recipe",
            name = "fertilized-water-recipe",
			localised_name = {"fluid-name.fertilized-water"},
            category = "chemistry",
            subgroup = "fluid-recipes",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type="fluid",name="water",amount=10},
                {type="item",name="chitinous-shell-fragment",amount=1}
            },
            results = {
                {type="fluid", name="fertilized-water", amount=10},
            }
        },
		
        {
            type = "recipe",
            name = "sugar-water-recipe",
			localised_name = {"fluid-name.sugar-water"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=50},
                {type="item",name="sugar",amount=3},
            },
            results = {
                {type="fluid", name="sugar-water", amount=20},
            }
        },
        {
            type = "recipe",
            name = "syrup-recipe",
			localised_name = {"fluid-name.syrup"},
            category = "bake-boiling",
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="fluid", name="sugar-water", amount=50},
            },
            results = {
                {type="fluid", name="syrup", amount=10},
            }
        },
		
		
        {
            type = "recipe",
            name = "vegetable-oil-wheat-recipe",
			localised_name = {"recipe-name.vegetable-oil-wheat-recipe"},  --do for each variation
            category = "crafting-with-fluid",
            subgroup = "fluid-recipes",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="wheat-seeds",amount=10},
            },
            results = {
                {type="fluid", name="light-oil", amount=30},
            },
			icons = {
				{icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
				{icon = data.raw["item"]["wheat-seeds"].icon, icon_size = 32, scale = 0.5, shift = {8,8}}
			}
        },
        {
            type = "recipe",
            name = "vegetable-oil-sugarcane-recipe",
			localised_name = {"recipe-name.vegetable-oil-sugarcane-recipe"},
            category = "crafting-with-fluid",
            subgroup = "fluid-recipes",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="sugarcane-seeds",amount=8},
            },
            results = {
                {type="fluid", name="light-oil", amount=30},
            },
			icons = {
				{icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
				{icon = data.raw["item"]["sugarcane-seeds"].icon, icon_size = 32, scale = 0.5, shift = {8,8}}
			}
        },
        {
            type = "recipe",
            name = "vegetable-oil-cocoa-bean-recipe",
			localised_name = {"recipe-name.vegetable-oil-cocoa-bean-recipe"},
            category = "crafting-with-fluid",
            subgroup = "fluid-recipes",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="cocoa-bean-seeds",amount=8},
            },
            results = {
                {type="fluid", name="light-oil", amount=30},
            },
			icons = {
				{icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
				{icon = data.raw["item"]["cocoa-bean-seeds"].icon, icon_size = 32, scale = 0.5, shift = {8,8}}
			}
        },
        {
            type = "recipe",
            name = "vegetable-oil-pumpkin-recipe",
			localised_name = {"recipe-name.vegetable-oil-pumpkin-recipe"},
            category = "crafting-with-fluid",
            subgroup = "fluid-recipes",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="pumpkin-seeds",amount=4},
            },
            results = {
                {type="fluid", name="light-oil", amount=30},
            },
			icons = {
				{icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
				{icon = data.raw["item"]["pumpkin-seeds"].icon, icon_size = 32, scale = 0.5, shift = {8,8}}
			}
        },
        {
            type = "recipe",
            name = "vegetable-oil-nuts-recipe",
			localised_name = {"recipe-name.vegetable-oil-nuts-recipe"},
            category = "crafting-with-fluid",
            subgroup = "fluid-recipes",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="item",name="nuts",amount=25},
            },
            results = {
                {type="fluid", name="light-oil", amount=50},
            },
			icons = {
				{icon = "__base__/graphics/icons/fluid/light-oil.png", icon_size = 64},
				{icon = data.raw["item"]["nuts"].icon, icon_size = 32, scale = 0.5, shift = {8,8}}
			}
        },
		
		
        {
            type = "recipe",
            name = "chocolate-sauce-recipe",
			localised_name = {"fluid-name.chocolate-sauce"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 60,
            enabled = false,
            ingredients ={
                {type="fluid",name="syrup",amount=15},
                {type="fluid",name="milk",amount=30},
                {type="item",name="cocoa-powder",amount=30},
            },
            results = {
                {type="fluid", name="chocolate-sauce", amount=60},
            },
        },
        {
            type = "recipe",
            name = "white-chocolate-sauce-recipe",
			localised_name = {"recipe-name.white-chocolate-sauce-recipe"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 60,
            enabled = false,
            ingredients ={
                {type="fluid",name="milk",amount=30},
                {type="item",name="cocoa-butter",amount=4},
                {type="item",name="sugar",amount=2},
            },
            results = {
                {type="fluid", name="white-chocolate-sauce", amount=35},
				{type = "item", name = "plastic-bin", amount = 1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/white-chocolate-sauce.png",
            icon_size = 32,
        },
		
		--  gravy can be made with any meat
        {
            type = "recipe",
            name = "gravy-beef-recipe",
			localised_name = {"recipe-name.gravy-beef-recipe"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=150},
                {type="item",name="flour",amount=1},
                {type="item",name="beef",amount=1},
            },
            results = {
                {type="fluid", name="gravy", amount=100},
				{type = "item", name = "plastic-bin", amount = 1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-pork-recipe",
			localised_name = {"recipe-name.gravy-pork-recipe"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=150},
                {type="item",name="flour",amount=1},
                {type="item",name="pork",amount=1},
            },
            results = {
                {type="fluid", name="gravy", amount=100},
				{type = "item", name = "plastic-bin", amount = 1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-chicken-recipe",
			localised_name = {"recipe-name.gravy-chicken-recipe"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=150},
                {type="item",name="flour",amount=1},
                {type="item",name="chicken-meat",amount=1},
            },
            results = {
                {type="fluid", name="gravy", amount=100},
				{type = "item", name = "plastic-bin", amount = 1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-mutton-recipe",
			localised_name = {"recipe-name.gravy-mutton-recipe"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 20,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=150},
                {type="item",name="flour",amount=1},
                {type="item",name="mutton",amount=1},
            },
            results = {
                {type="fluid", name="gravy", amount=100},
				{type = "item", name = "plastic-bin", amount = 1, probability=0.9}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "cobbler-mixture-recipe",
			localised_name = {"fluid-name.cobbler-mixture"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="fluid",name="milk",amount=40},
                {type="item",name="flour",amount=2},
                {type="item",name="sugar",amount=3},
            },
            results = {{type="fluid", name="cobbler-mixture", amount=50}}
        },
        {
            type = "recipe",
            name = "lemon-juice-recipe",
			localised_name = {"liquid-name.lemon-juice"},
            category = "chemistry",
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="lemons",amount=1},
            },
            results = {
                {type="fluid", name="lemon-juice", amount=50},
				{type = "item", name = "bushel-basket", amount = 1, probability=0.5}
            },
            icon = "__baketorio_plus__/graphics/lemon-juice.png",
            icon_size = 32,
        },
    }
)


data.raw["recipe"]["u-milk-recipe"].subgroup = "fluid-ingredient"
data.raw["recipe"]["milk-pasteurization"].subgroup = "fluid-ingredient"
data.raw["recipe"]["milk-filtering"].subgroup = "fluid-ingredient"
data.raw["recipe"]["butter-churning"].subgroup = "fluid-ingredient"





