-- Add recipe names here to add them to productivity modules
local prod_recipes = {
  "sugar-water",
  "syrup",
  "fertilized-water",
  "vegetable-oil-wheat",
  "vegetable-oil-sugarcane",
  "vegetable-oil-cocoa-bean",
  "vegetable-oil-pumpkin",
  "vegetable-oil-nuts",
  "chocolate-sauce",
  "white-chocolate-sauce",
}

data:extend(
    {
        {
            type = "recipe",
            name = "fertilized-water",
			localised_name = {"fluid-name.fertilized-water"},
            categories = {"chemistry"},
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
            name = "sugar-water",
			localised_name = {"fluid-name.sugar-water"},
            categories = {"chemistry"},
            subgroup = "fluid-ingredient",
            energy_required = 5,
            enabled = false,
            ingredients ={
                {type="fluid",name="water",amount=50},
                {type="item",name="sugar",amount=1},
            },
            results = {
                {type="fluid", name="sugar-water", amount=50},
            }
        },
        {
            type = "recipe",
            name = "syrup",
			localised_name = {"fluid-name.syrup"},
            categories = {"bake-boiling"},
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
            name = "vegetable-oil-wheat",
			localised_name = {"recipe-name.vegetable-oil-wheat-recipe"},  --do for each variation
            categories = {"crafting-with-fluid"},
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
            name = "vegetable-oil-sugarcane",
			localised_name = {"recipe-name.vegetable-oil-sugarcane-recipe"},
            categories = {"crafting-with-fluid"},
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
            name = "vegetable-oil-cocoa-bean",
			localised_name = {"recipe-name.vegetable-oil-cocoa-bean-recipe"},
            categories = {"crafting-with-fluid"},
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
            name = "vegetable-oil-pumpkin",
			localised_name = {"recipe-name.vegetable-oil-pumpkin-recipe"},
            categories = {"crafting-with-fluid"},
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
            name = "vegetable-oil-nuts",
			localised_name = {"recipe-name.vegetable-oil-nuts-recipe"},
            categories = {"crafting-with-fluid"},
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
            name = "chocolate-sauce",
			localised_name = {"fluid-name.chocolate-sauce"},
            categories = {"chemistry"},
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
            name = "white-chocolate-sauce",
			localised_name = {"fluid-name.white-chocolate-sauce"},
            categories = {"chemistry"},
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
				{type = "item", name = "metal-bucket", amount = 1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/white-chocolate-sauce.png",
            icon_size = 32,
        },
		
		--  gravy can be made with any meat
        {
            type = "recipe",
            name = "gravy-beef",
			localised_name = {"recipe-name.gravy-beef-recipe"},
            categories = {"chemistry"},
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
				{type = "item", name = "plastic-bin", amount = 1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-pork",
			localised_name = {"recipe-name.gravy-pork-recipe"},
            categories = {"chemistry"},
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
				{type = "item", name = "plastic-bin", amount = 1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-chicken",
			localised_name = {"recipe-name.gravy-chicken-recipe"},
            categories = {"chemistry"},
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
				{type = "item", name = "plastic-bin", amount = 1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "gravy-mutton",
			localised_name = {"recipe-name.gravy-mutton-recipe"},
            categories = {"chemistry"},
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
				{type = "item", name = "plastic-bin", amount = 1, independent_probability=0.9, ignored_by_productivity = 10}
            },
            icon = "__baketorio_plus__/graphics/gravy.png",
            icon_size = 32,
        },
        {
            type = "recipe",
            name = "cobbler-mixture",
			localised_name = {"fluid-name.cobbler-mixture"},
            categories = {"chemistry"},
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
            name = "lemon-juice",
			localised_name = {"fluid-name.lemon-juice"},
            categories = {"chemistry"},
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="lemons",amount=1},
            },
            results = {
                {type="fluid", name="lemon-juice", amount=50},
				{type = "item", name = "bushel-basket", amount = 1, independent_probability=0.6}
            },
            icon = "__baketorio_plus__/graphics/lemon-juice.png",
            icon_size = 32,
        },
		
        {
            type = "recipe",
            name = "buttermilk",
			localised_name = {"fluid-name.buttermilk"},
            categories = {"chemistry"},
            subgroup = "fluid-ingredient",
            energy_required = 60,
            enabled = false,
            ingredients ={
                {type="fluid",name="lemon-juice",amount=50},
                {type="fluid",name="milk",amount=250},
            },
            results = {
                {type="fluid", name="buttermilk", amount=300},
            }
        },
		
        {
            type = "recipe",
            name = "cocoa-butter-fluid",
			localised_name = {"fluid-name.cocoa-butter-fluid"},
            categories = {"butterize"},
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="cocoa-beans",amount=10},
            },
            results = {
                {type="fluid", name="cocoa-butter-fluid", amount=100},
            }
        },
        {
            type = "recipe",
            name = "peanut-butter-fluid",
			localised_name = {"fluid-name.peanut-butter-fluid"},
            categories = {"butterize"},
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="peanuts",amount=10},
            },
            results = {
                {type="fluid", name="peanut-butter-fluid", amount=100},
            }
        },
        {
            type = "recipe",
            name = "almond-butter-fluid",
			localised_name = {"fluid-name.almond-butter-fluid"},
            categories = {"butterize"},
            subgroup = "fluid-ingredient",
            energy_required = 10,
            enabled = false,
            ingredients ={
                {type="item",name="almonds",amount=10},
            },
            results = {
                {type="fluid", name="almond-butter-fluid", amount=100},
            }
        },
    }
)


data.raw["recipe"]["u-milk"].subgroup = "fluid-ingredient"
data.raw["recipe"]["milk-pasteurization"].subgroup = "fluid-ingredient"
data.raw["recipe"]["milk-filtering"].subgroup = "fluid-ingredient"
data.raw["recipe"]["butter-churning"].subgroup = "fluid-ingredient"

for _, v in ipairs(prod_recipes) do
    data.raw["recipe"][v].allow_productivity = true
end
