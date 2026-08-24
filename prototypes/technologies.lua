--[[
data:extend {
  {
    type = "technology",
    name = "leavening",
    icon_size = 128,
    icon = "__baketorio__/graphics/bread_tech.png",
    prerequisites = {"automation"},
    effects =
    {
      {type = "unlock-recipe",recipe = "basic-dough"},
      {type = "unlock-recipe",recipe = "basic-bread"},
    },
    unit =
    {
      count = 10,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "sugar",
    icon_size = 128,
    icon = "__baketorio__/graphics/sugar_tech.png",
    prerequisites = {"leavening"},
    effects =
    {
      {type = "unlock-recipe",recipe = "sugarcane"},
      {type = "unlock-recipe",recipe = "sugarcane-seeds"},
      {type = "unlock-recipe",recipe = "sugar"},
      {type = "unlock-recipe",recipe = "sugar-dough"},
      {type = "unlock-recipe",recipe = "sugar-bread"},
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "baking",
    icon_size = 128,
    icon = "__baketorio__/graphics/baking_tech.png",
    prerequisites = {"animal-husbandry","sugar"},
    effects =
    {
      {type = "unlock-recipe",recipe = "basic-batter"},
      {type = "unlock-recipe",recipe = "basic-batter-cake"},
      {type = "unlock-recipe",recipe = "basic-batter-cake-cooked"},
      {type = "unlock-recipe",recipe = "basic-batter-cake-cooked-frosted"},
      {type = "unlock-recipe",recipe = "basic-batter-cupcake"},
      {type = "unlock-recipe",recipe = "basic-batter-cupcake-cooked"},
      {type = "unlock-recipe",recipe = "basic-batter-cupcake-cooked-frosted"},
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "frying",
    icon_size = 128,
    icon = "__baketorio__/graphics/frying_tech.png",
    prerequisites = {"animal-husbandry"},
    effects =
    {

      {type = "unlock-recipe",recipe = "fryer-dough"},
      {type = "unlock-recipe",recipe = "fryer-dough-doughnut"},
      {type = "unlock-recipe",recipe = "fryer-dough-doughnut-cooked"},
      {type = "unlock-recipe",recipe = "fryer-dough-doughnut-cooked-frosted"},
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "animal-husbandry",
    icon_size = 128,
    icon = "__baketorio__/graphics/animal_husbandry.png",
    prerequisites = {"nutrient2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "egg"
      },
      {
        type = "unlock-recipe",
        recipe = "chicken"
      },
      {
        type = "unlock-recipe",
        recipe = "chicken-recipe-egg"
      },
      {
        type = "unlock-recipe",
        recipe = "cow"
      },
      {
        type = "unlock-recipe",
        recipe = "u-milk"
      },
      {
        type = "unlock-recipe",
        recipe = "milk-pasteurization"
      },
      {
        type = "unlock-recipe",
        recipe = "milk-filtering"
      },
      {
        type = "unlock-recipe",
        recipe = "frosting"
      },
      {
        type = "unlock-recipe",
        recipe = "butter-churning"
      },
      {
        type = "unlock-recipe",
        recipe = "butter-solidification"
      },
      {
        type = "unlock-recipe",
        recipe = "breed-cow"
      },
      {type = "unlock-recipe",recipe = "egg-dough"},
      {type = "unlock-recipe",recipe = "egg-bread"},

    },
    unit =
    {
      count = 80,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "cocoa",
    icon_size = 128,
    icon = "__baketorio__/graphics/cocoa.png",
    prerequisites = {"nutrient4"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cocoa-bean-seeds"
      },
      {
        type = "unlock-recipe",
        recipe = "cocoa-beans"
      },
      {
        type = "unlock-recipe",
        recipe = "cocoa-powder"
      },
      {type = "unlock-recipe",recipe = "chocolate-batter"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cake"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cake-cooked"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cake-cooked-frosted"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cupcake"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cupcake-cooked"},
      {type = "unlock-recipe",recipe = "chocolate-batter-cupcake-cooked-frosted"},
      {type = "unlock-recipe",recipe = "chocolate-batter-doughnut"},
      {type = "unlock-recipe",recipe = "chocolate-batter-doughnut-cooked"},
      {type = "unlock-recipe",recipe = "chocolate-batter-doughnut-cooked-frosted"},
      {type = "unlock-recipe",recipe = "brownie"},
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "cheese",
    icon_size = 128,
    icon = "__baketorio__/graphics/cheese_tech.png",
    prerequisites = {"logistic-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "cheese"},
      {type = "unlock-recipe",recipe = "cheese-batter"},
      {type = "unlock-recipe",recipe = "cheese-batter-cake"},
      {type = "unlock-recipe",recipe = "cheese-batter-cake-cooked"},
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "cinnamon",
    icon_size = 128,
    icon = "__baketorio__/graphics/cinnamon_tech.png",
    prerequisites = {"chemical-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "cinnamon"},
      {type = "unlock-recipe",recipe = "cinnamon-seeds"},
      {type = "unlock-recipe",recipe = "cinnamon-sugar"},
      {type = "unlock-recipe",recipe = "fryer-dough-bun"},
      {type = "unlock-recipe",recipe = "fryer-dough-bun-cooked"},
      {type = "unlock-recipe",recipe = "fryer-dough-bun-cooked-frosted"},
      {type = "unlock-recipe",recipe = "cinnamon-dough"},
      {type = "unlock-recipe",recipe = "cinnamon-bread"},
      {type = "unlock-recipe",recipe = "cinnamon-sugar-doughnut"},
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}},
      time = 30
    },
  },
  {
    type = "technology",
    name = "blueberries",
    icon_size = 128,
    icon = "__baketorio__/graphics/blueberries_tech.png",
    prerequisites = {"nutrient5"},
    effects =
    {
      {type = "unlock-recipe",recipe = "blueberries"},
      {type = "unlock-recipe",recipe = "blueberry-seeds"},
      {type = "unlock-recipe",recipe = "blueberry-batter"},
      {type = "unlock-recipe",recipe = "blueberry-batter-doughnut"},
      {type = "unlock-recipe",recipe = "blueberry-batter-doughnut-cooked"},
      {type = "unlock-recipe",recipe = "blueberry-batter-scone"},
      {type = "unlock-recipe",recipe = "blueberry-batter-scone-cooked"},
      {type = "unlock-recipe",recipe = "blueberry-batter-scone-cooked-frosted"},
      {type = "unlock-recipe",recipe = "blueberry-batter-muffin"},
      {type = "unlock-recipe",recipe = "blueberry-batter-muffin-cooked"},
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "strawberries",
    icon_size = 128,
    icon = "__baketorio__/graphics/strawberries_tech.png",
    prerequisites = {"utility-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "strawberries"},
      {type = "unlock-recipe",recipe = "strawberry-seeds"},
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "chocolate-chips",
    icon_size = 128,
    icon = "__baketorio__/graphics/choc_tech.png",
    prerequisites = {"utility-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "chocolate-chip-batter"},
      {type = "unlock-recipe",recipe = "chocolate-chip-cookie"},
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "advanced-baking",
    icon_size = 128,
    icon = "__baketorio__/graphics/trona_tech.png",
    prerequisites = {"utility-science-pack","strawberries","oil-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "soda-ash"},
      {type = "unlock-recipe",recipe = "baking-soda"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cake"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cake-cooked"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cake-cooked-frosted"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cupcake"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cupcake-cooked"},
      {type = "unlock-recipe",recipe = "advanced-cake-batter-cupcake-cooked-frosted"},
    },
    unit =
    {
      count = 800,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "ice-cream",
    icon_size = 128,
    icon = "__baketorio__/graphics/ice_cream_tech.png",
    prerequisites = {"utility-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "plain-ice-cream"},
      {type = "unlock-recipe",recipe = "brownies-with-ice-cream"},
    },
    unit =
    {
      count = 800,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "pie",
    icon_size = 128,
    icon = "__baketorio__/graphics/pie_tech.png",
    prerequisites = {"strawberries"},
    effects =
    {
      {type = "unlock-recipe",recipe = "blueberry-pie"},
      {type = "unlock-recipe",recipe = "strawberry-pie"},
      {type = "unlock-recipe",recipe = "blueberry-pie-cooked"},
      {type = "unlock-recipe",recipe = "strawberry-pie-cooked"},
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
}

-- Adding alternative recipe unlock
table.insert(data.raw.technology["automation-science-pack"].effects, {type="unlock-recipe", recipe="automation-science-pack-hardtack"})

local baking_science = data.raw.technology["logistic-science-pack"];
baking_science.prerequisites = {"baking"};

local flavour_science = data.raw.technology["chemical-science-pack"];
flavour_science.prerequisites = {"cocoa","frying"};

local utility_science = data.raw.technology["utility-science-pack"];
utility_science.prerequisites = {"cinnamon","blueberries"};

local p_science = data.raw.technology["production-science-pack"];
p_science.prerequisites = {"advanced-baking","pie","chocolate-chips","ice-cream"};

local r = data.raw.technology["rocket-silo"];
table.insert(r.prerequisites,"nutrient6");

]]











--[[
techs to add:
fertilized water (before grain, or parallel)
wood (growing)
wood processing (including paper, after wood)
syrup (with just burner)
(add electric boiler to the electric furnace tech)
vegtable oil (after grain, with just the grain recipe. Add other recipes to their respective plants)
pancakes (after strawberries and blueberries and syrup)
nuts (including veg oil, after nutrient6)
advanced nut sorting (after nuts, for the 4 mixed -> single recipes)

pumpkins (including veg oil, after nutrient6)
pumpkin cookies (after pumpkins)
more pies (pumpkin and pecan pies, after pies and pumpkins and nuts)

butterize (with just butterizer, a prereq for croissants)
advanced chocolate processing (chocolate sauce, cocoa butter, and white chocolate sauce, after chocolate tech and syrup and butterizer)
ice cream mixing (with both ice cream flavours, after ice cream and strawberries)
ice cream sundae (neo and sundae, after advanced chocolate processing and ice cream mixing)

baklava (after nuts and syrup)
nut butters (after butterizer and nuts)
croissants (after butterizer and advanced chocolate processing)
]]




data:extend {
  
  {
    type = "technology",
    name = "wood",
	localised_name = {"technology-name.wood"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/wood_tech.png",
    prerequisites = {"automation", "nutrient1"},
    effects =
    {
      {type = "unlock-recipe",recipe = "wood"},
      {type = "unlock-recipe",recipe = "wood-recipe-water"},
    },
    unit =
    {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "wood-processing",
	localised_name = {"technology-name.wood-processing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/wood-processing_tech.png",
    prerequisites = {"wood", "steel-processing"},
    effects =
    {
	  {type = "unlock-recipe",recipe = "chemical-plant"},
      {type = "unlock-recipe",recipe = "wood-frame"},
      {type = "unlock-recipe",recipe = "wood-ground"},
      {type = "unlock-recipe",recipe = "wood-pulp"},
      {type = "unlock-recipe",recipe = "wood-paper"},
      {type = "unlock-recipe",recipe = "paper-wrapper"}
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  
  {
    type = "technology",
    name = "fertilized-water",
	localised_name = {"technology-name.fertilized-water"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/fertilized-water_tech.png",
    prerequisites = {"wood-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "fertilized-water"},
      {type = "unlock-recipe",recipe = "wheat-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "wood-recipe-fertilizer"},
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 15
    },
  },
  
  
  {
    type = "technology",
    name = "syrup",
	localised_name = {"technology-name.syrup"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/syrup_tech.png",
    prerequisites = {"sugar", "concrete"},
    effects =
    {
      {type = "unlock-recipe",recipe = "bake-burner-boiler"},
      {type = "unlock-recipe",recipe = "sugar-water"},
      {type = "unlock-recipe",recipe = "syrup"}
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "vegetable-oil",
	localised_name = {"technology-name.vegetable-oil"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/vegetable-oil_tech.png",
    prerequisites = {"sugar"},
    effects =
    {
      {type = "unlock-recipe", recipe = "vegetable-oil-wheat"},
	  {type = "unlock-recipe", recipe = "vegetable-oil-sugarcane"}
    },
    unit =
    {
      count = 20,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  
  {
    type = "technology",
    name = "pancakes",
	localised_name = {"technology-name.pancakes"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/pancakes_tech.png",
    prerequisites = {"strawberries", "blueberries", "syrup", "cinnamon"},
    effects =
    {
      {type = "unlock-recipe",recipe = "pancake-batter"},
      {type = "unlock-recipe",recipe = "pancake-cooked"},
      {type = "unlock-recipe",recipe = "pancakes-with-syrup"}
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "nuts",
	localised_name = {"technology-name.nuts"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/nuts_tech.png",
    prerequisites = {"nutrient6"},
    effects =
    {
      {type = "unlock-recipe",recipe = "nuts-seeds"},
      {type = "unlock-recipe",recipe = "nuts"},
      {type = "unlock-recipe",recipe = "nuts-recipe-water"},
      {type = "unlock-recipe",recipe = "nuts-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "filter-nuts"},
      {type = "unlock-recipe",recipe = "vegetable-oil-nuts"},
    },
    unit =
    {
      count = 600,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "advanced-nut-sorting",
	localised_name = {"technology-name.advanced-nut-sorting"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/advanced-nut-sorting_tech.png",
    prerequisites = {"nuts"},
    effects =
    {
      {type = "unlock-recipe",recipe = "filter-nuts-for-almonds"},
      {type = "unlock-recipe",recipe = "filter-nuts-for-pistachios"},
      {type = "unlock-recipe",recipe = "filter-nuts-for-pecans"},
      {type = "unlock-recipe",recipe = "filter-nuts-for-peanuts"},
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },

--pumpkins (including veg oil, after nutrient6)
--pumpkin cookies (after pumpkins)
--more pies (pumpkin and pecan pies, after pie and pumpkins and nuts)
  {
    type = "technology",
    name = "pumpkins",
	localised_name = {"technology-name.pumpkins"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/pumpkin_tech.png",
    prerequisites = {"nutrient6"},
    effects =
    {
      {type = "unlock-recipe",recipe = "pumpkin-seeds"},
      {type = "unlock-recipe",recipe = "pumpkin"},
      {type = "unlock-recipe",recipe = "pumpkin-recipe-water"},
      {type = "unlock-recipe",recipe = "pumpkin-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "metal-bucket"},
      {type = "unlock-recipe",recipe = "pumpkin-pulp"},
      {type = "unlock-recipe",recipe = "vegetable-oil-pumpkin"},
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "pumpkin-cookies",
	localised_name = {"technology-name.pumpkin-cookies"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/pumpkin-cookies_tech.png",
    prerequisites = {"pumpkins"},
    effects =
    {
      {type = "unlock-recipe",recipe = "pumpkin-batter"},
      {type = "unlock-recipe",recipe = "pumpkin-cookie"},
      {type = "unlock-recipe",recipe = "pumpkin-cookie-cooked"},
      {type = "unlock-recipe",recipe = "pumpkin-cookie-glazed"},
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "more-pies",
	localised_name = {"technology-name.more-pies"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/more-pies_tech.png",
    prerequisites = {"pumpkins", "nuts", "syrup", "lemons", "meringue"},
    effects =
    {
      {type = "unlock-recipe",recipe = "pumpkin-pie"},
      {type = "unlock-recipe",recipe = "pumpkin-pie-cooked"},
      {type = "unlock-recipe",recipe = "pumpkin-pie-cooked-with-ice-cream"},
      {type = "unlock-recipe",recipe = "pecan-pie"},
      {type = "unlock-recipe",recipe = "pecan-pie-cooked"},
      {type = "unlock-recipe",recipe = "lemon-meringue-pie"},
      {type = "unlock-recipe",recipe = "lemon-meringue-pie-cooked"},
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  
--butterize (with just butterizer, a prereq for croissants)
--advanced chocolate processing (chocolate sauce, cocoa butter, and white chocolate sauce, after chocolate tech and syrup and butterizer)
--ice cream mixing (with both ice cream flavours, after ice cream and strawberries)
--ice cream sundae (neo and sundae, after advanced chocolate processing and ice cream mixing)"butterizer"
  {
    type = "technology",
    name = "butterizer",
	localised_name = {"technology-name.butterizer"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/butterizer_tech.png",
    prerequisites = {"utility-science-pack"},
    effects = {
	  {type = "unlock-recipe",recipe = "butterizer"},
      {type = "unlock-recipe",recipe = "buttered-dough-1"}
	},
    unit =
    {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "advanced-chocolate-processing",
	localised_name = {"technology-name.advanced-chocolate-processing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/advanced-chocolate-processing_tech.png",
    prerequisites = {"syrup", "cocoa", "butterizer", "production-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "chocolate-sauce"},
      {type = "unlock-recipe",recipe = "metal-bucket"},
      {type = "unlock-recipe",recipe = "cocoa-butter-fluid"},
      {type = "unlock-recipe",recipe = "cocoa-butter"},
      {type = "unlock-recipe",recipe = "white-chocolate-sauce"},
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "ice-cream-mixing",
	localised_name = {"technology-name.ice-cream-mixing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/ice-cream-mixing_tech.png",
    prerequisites = {"ice-cream", "strawberries", "production-science-pack"},
    effects =
    {
	  {type="unlock-recipe", recipe="strawberry-ice-cream"},
	  {type="unlock-recipe", recipe="chocolate-ice-cream"},
      {type = "unlock-recipe",recipe = "neapolitan-ice-cream"},
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "ice-cream-sundae",
	localised_name = {"technology-name.ice-cream-sundae"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/ice-cream-sundae_tech.png",
    prerequisites = {"advanced-chocolate-processing", "ice-cream-mixing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "ice-cream-sundae"},
    },
    unit =
    {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },

--baklava (after nuts and syrup)
--nut butters (after butterizer and nuts)
--croissants (after butterizer and advanced chocolate processing)
  {
    type = "technology",
    name = "baklava",
	localised_name = {"technology-name.baklava"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/baklava_tech.png",
    prerequisites = {"nuts", "syrup", "utility-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "filo-dough"},
      {type = "unlock-recipe",recipe = "baklava"},
      {type = "unlock-recipe",recipe = "baklava-cooked"},
    },
    unit =
    {
      count = 350,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "nut-butters",
	localised_name = {"technology-name.nut-butters"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/nut-butters_tech.png",
    prerequisites = {"butterizer", "nuts"},
    effects =
    {
      {type = "unlock-recipe",recipe = "metal-bucket"},
      {type = "unlock-recipe",recipe = "cocoa-butter-fluid"},
      {type = "unlock-recipe",recipe = "cocoa-butter"},
      {type = "unlock-recipe",recipe = "peanut-butter-fluid"},
      {type = "unlock-recipe",recipe = "peanut-butter"},
      {type = "unlock-recipe",recipe = "almond-butter-fluid"},
      {type = "unlock-recipe",recipe = "almond-butter"},
    },
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "croissants",
	localised_name = {"technology-name.croissants"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/croissants_tech.png",
    prerequisites = {"butterizer", "advanced-chocolate-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "buttered-dough-2"},
      {type = "unlock-recipe",recipe = "buttered-dough-3"},
      {type = "unlock-recipe",recipe = "buttered-dough-4"},
      {type = "unlock-recipe",recipe = "buttered-dough-5"},
      {type = "unlock-recipe",recipe = "buttered-dough-6"},
      {type = "unlock-recipe",recipe = "buttered-dough-7"},
      {type = "unlock-recipe",recipe = "croissant"},
      {type = "unlock-recipe",recipe = "croissant-cooked"},
      {type = "unlock-recipe",recipe = "chocolate-chip-buttered-dough"},
      {type = "unlock-recipe",recipe = "chocolate-chip-croissant"},
      {type = "unlock-recipe",recipe = "chocolate-chip-croissant-cooked"},
      {type = "unlock-recipe",recipe = "chocolate-chip-croissant-cooked-white-drizzle"},
    },
    unit =
    {
      count = 350,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
  },
  
  --  animal processing
  
  {
    type = "technology",
    name = "animal-processing",
	localised_name = {"technology-name.animal-processing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/animal-processing_tech.png",
    prerequisites = {"animal-husbandry", "chemical-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "butcher"},
	  {type = "unlock-recipe",recipe = "plastic-bin"},
      {type = "unlock-recipe",recipe = "beef"},
      {type = "unlock-recipe",recipe = "pork"},
      {type = "unlock-recipe",recipe = "chicken-meat"},
      {type = "unlock-recipe",recipe = "mutton"}
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "gravy",
	localised_name = {"technology-name.gravy"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/gravy_tech.png",
    prerequisites = {"animal-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "gravy-beef"},
      {type = "unlock-recipe",recipe = "gravy-pork"},
      {type = "unlock-recipe",recipe = "gravy-chicken"},
      {type = "unlock-recipe",recipe = "gravy-mutton"}
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
  },
  {
    type = "technology",
    name = "meat-baking",
	localised_name = {"technology-name.meat-baking"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/meat-baking_tech.png",
    prerequisites = {"gravy", "pie", "butterizer"},
    effects =
    {
      {type = "unlock-recipe",recipe = "meat-pie-beef"},
      {type = "unlock-recipe",recipe = "meat-pie-mutton"},
      {type = "unlock-recipe",recipe = "meat-pie-cooked"},
      {type = "unlock-recipe",recipe = "chicken-pot-pie"},
      {type = "unlock-recipe",recipe = "chicken-pot-pie-cooked"},
      {type = "unlock-recipe",recipe = "sausage-roll"},
      {type = "unlock-recipe",recipe = "sausage-roll-cooked"},
    },
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "meat-baking-science-pack",
	localised_name = {"technology-name.meat-baking-science-pack"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/meat-baking-science-pack_tech.png",
    prerequisites = {"meat-baking"},
    effects =
    {
	--  meat baking science pack
      {type = "unlock-recipe",recipe = "meat-baking-science-pack"},
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
  },
  
  --  unlock bushel-basket-recipe with apples, peaches, and lemons
		--[[
		total things to add:
		apples, peaches, lemons
		meringue, meringue cookies (just cooked meringue, no middle step, 1 -> 4) (Meringue tech)
		apple fritter, apple fritter cooked (same as donut, as part of Apples)
		apple pie, apple pie cooked (as part of Pie)
		peach cobbler, peach cobbler cooked (as part of Peaches)
		lemon juice, lemon curd (uses gelatin and lemon juice, and plastic bin), lemon tart, lemon tart cooked (as part of Lemons, following Animal Processing)
		lemon meringue pie, lemon meringue pie cooked (as part of More Pies, which now much follow Meringue)
		]]
  {
    type = "technology",
    name = "meringue",
	localised_name = {"technology-name.meringue"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/meringue_tech.png",
    prerequisites = {"animal-husbandry", "logistic-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "meringue"},
      {type = "unlock-recipe",recipe = "meringue-cookies"},
    },
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "apples",
	localised_name = {"technology-name.apples"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/apples_tech.png",
    prerequisites = {"cinnamon", "vegetable-oil"},
    effects =
    {
      {type = "unlock-recipe",recipe = "bushel-basket"},
      {type = "unlock-recipe",recipe = "apple-seeds"},
      {type = "unlock-recipe",recipe = "apples"},
      {type = "unlock-recipe",recipe = "apples-recipe-water"},
      {type = "unlock-recipe",recipe = "apples-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "apple-fritter"},
      {type = "unlock-recipe",recipe = "apple-fritter-cooked"},
      {type = "unlock-recipe",recipe = "apple-fritter-glazed"},
    },
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "peaches",
	localised_name = {"technology-name.peaches"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/peaches_tech.png",
    prerequisites = {"cinnamon"},
    effects =
    {
      {type = "unlock-recipe",recipe = "bushel-basket"},
      {type = "unlock-recipe",recipe = "peach-seeds"},
      {type = "unlock-recipe",recipe = "peaches"},
      {type = "unlock-recipe",recipe = "peaches-recipe-water"},
      {type = "unlock-recipe",recipe = "peaches-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "peach-cobbler"},
      {type = "unlock-recipe",recipe = "cobbler-mixture"},
      {type = "unlock-recipe",recipe = "peach-cobbler-cooked"},
      {type = "unlock-recipe",recipe = "peach-cobbler-cooked-with-ice-cream"},
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "lemons",
	localised_name = {"technology-name.lemons"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/lemons_tech.png",
    prerequisites = {"animal-processing", "butterizer"},
    effects =
    {
      {type = "unlock-recipe",recipe = "bushel-basket"},
      {type = "unlock-recipe",recipe = "lemon-seeds"},
      {type = "unlock-recipe",recipe = "lemons"},
      {type = "unlock-recipe",recipe = "lemons-recipe-water"},
      {type = "unlock-recipe",recipe = "lemons-recipe-fertilizer"},
      {type = "unlock-recipe",recipe = "lemon-juice"},
      {type = "unlock-recipe",recipe = "lemon-curd"},
      {type = "unlock-recipe",recipe = "lemon-tart"},
      {type = "unlock-recipe",recipe = "lemon-tart-cooked"},
      {type = "unlock-recipe",recipe = "buttermilk"},
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
  },
  
  
  
  {
    type = "technology",
    name = "fruit-baking-science-pack",
	localised_name = {"technology-name.fruit-baking-science-pack"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/fruit-baking-science-pack_tech.png",
    prerequisites = {"apples", "peaches", "lemons"},
    effects =
    {
	  --  fruit-baking-science-pack
      {type = "unlock-recipe",recipe = "fruit-baking-science-pack"},
      {type = "unlock-recipe",recipe = "fruit-baking-science-pack-2"},
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
  },
  
  
  {
    type = "technology",
    name = "body-improvement",
	localised_name = {"technology-name.body-improvement"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"fruit-baking-science-pack", "meat-baking-science-pack"},
    effects =
    {
	  --  nothing, just a gateway
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 30
    },
  },
  
  --  all of the body improvements (health, running, reach, shooting, inventory, mining, crafting)
  {
    type = "technology",
    name = "live-longer-1",
	localised_name = {"technology-name.live-longer"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"body-improvement"},
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "run-faster-1",
	localised_name = {"technology-name.run-faster"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"body-improvement"},
    effects =
    {
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "reach-further-1",
	localised_name = {"technology-name.reach-further"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"body-improvement"},
    effects =
    {
      {type = "character-build-distance", modifier = 0.1},
      {type = "character-item-drop-distance", modifier = 0.1},
      {type = "character-reach-distance", modifier = 0.1},
      {type = "character-resource-reach-distance", modifier = 0.1},
      {type = "character-item-pickup-distance", modifier = 0.1},
      {type = "character-loot-pickup-distance", modifier = 0.1},
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "shoot-faster-1",
	localised_name = {"technology-name.shoot-faster"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"military", "body-improvement"},
    effects =
    {
      {
        type = "gun-speed",
		ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  
  
  
  {
    type = "technology",
    name = "mine-faster-1",
	localised_name = {"technology-name.mine-faster"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"steel-axe", "body-improvement"},
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.25
      }
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "stronger-back-1",
	localised_name = {"technology-name.stronger-back"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"toolbelt", "body-improvement"},
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 4
      }
    },
    unit =
    {
      --count = 50,
      --count_formula = "2^(L-2)*100",
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "craft-faster-1",
	localised_name = {"technology-name.craft-faster"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/body-improvement_tech.png",
    prerequisites = {"body-improvement"},
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.1
      }
    },
    unit =
    {
      --count = 50,
      count_formula = "100*min(min(L, L/2+5), L/4+10)",
      ingredients = {
        {"fruit-baking-science-pack", 1},
        {"meat-baking-science-pack", 1},
      },
      time = 45
    },
    max_level = "infinite",
    upgrade = true
  },
  
  {
    type = "technology",
    name = "milk-processing",
	localised_name = {"technology-name.milk-processing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/milk-processing_tech.png",
    prerequisites = {"animal-husbandry", "wood-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "milk-filtering"},
      {type = "unlock-recipe",recipe = "frosting"},
      {type = "unlock-recipe",recipe = "butter-churning"},
      {type = "unlock-recipe",recipe = "butter-solidification"},
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  
  {
    type = "technology",
    name = "wool-processing",
	localised_name = {"technology-name.wool-processing"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/wool-processing_tech.png",
    prerequisites = {"animal-husbandry"},
    effects =
    {
      {type = "unlock-recipe",recipe = "yarn"},
      {type = "unlock-recipe",recipe = "fabric"},
      {type = "unlock-recipe",recipe = "bag"},
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "leavening-2",
	localised_name = {"technology-name.leavening-2"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/leavening-2_tech.png",
    prerequisites = {"wool-processing", "leavening"},
    effects =
    {
      {type = "unlock-recipe",recipe = "flour"},
      {type = "unlock-recipe",recipe = "hardtack"},
      {type = "unlock-recipe",recipe = "basic-dough"},
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
    },
  },
  
  
  
  --  yeast tech that follows "syrup" and unlocks yeast growth
  {
    type = "technology",
    name = "yeast",
	localised_name = {"item-name.yeast"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/yeast_tech.png",
    prerequisites = {"syrup", "chemical-science-pack"},
    effects =
    {
      {type = "unlock-recipe",recipe = "yeast-propagation"},
      {type = "unlock-recipe",recipe = "yeast-module-2"},
      {type = "unlock-recipe",recipe = "yeast-module-3"},
      {type = "unlock-recipe",recipe = "yeast-module-3-recipe-2"},
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  
  --  3 fruit scrubbing recipes that unlock after yeast and their respective fruit (even if the 1 fruit is crafting, it won't unlock until both parents are researched)
  {
    type = "technology",
    name = "yeast-apple",
	localised_name = {"technology-name.yeast-apple"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/yeast-apple_tech.png",
    prerequisites = {"yeast", "apples"},
    effects =
    {
      {type = "unlock-recipe",recipe = "yeast-apple"},
    },
    research_trigger =
    {
      type = "craft-item",
      item = "apples",
      count = 1
    }
  },
  {
    type = "technology",
    name = "yeast-lemon",
	localised_name = {"technology-name.yeast-lemon"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/yeast-lemon_tech.png",
    prerequisites = {"yeast", "lemons"},
    effects =
    {
      {type = "unlock-recipe",recipe = "yeast-lemon"},
    },
    research_trigger =
    {
      type = "craft-item",
      item = "lemons",
      count = 1
    }
  },
  {
    type = "technology",
    name = "yeast-peach",
	localised_name = {"technology-name.yeast-peach"},
    icon_size = 128,
    icon = "__baketorio_plus__/graphics/yeast-peach_tech.png",
    prerequisites = {"yeast", "peaches"},
    effects =
    {
      {type = "unlock-recipe",recipe = "yeast-peach"},
    },
    research_trigger =
    {
      type = "craft-item",
      item = "peaches",
      count = 1
    }
  },
}




data.raw["recipe"]["chemical-plant"].enabled = false;

data.raw["recipe"]["hardtack"].enabled = false;  --  start with the box flour and unlock this later
data.raw["recipe"]["flour"].enabled = false;
--  remove dough recipe add new recipe in place to leavening
for key,value in pairs(data.raw["technology"]["leavening"].effects) do
	if value.recipe == "basic-dough" then
		table.remove(data.raw["technology"]["leavening"].effects, key)
		break
	end
end
table.insert(data.raw["technology"]["leavening"].effects, 1, {type="unlock-recipe", recipe="basic-dough-box"})
--  add leavening 2 as prereq for sugar (bags)
table.insert(data.raw["technology"]["sugar"].prerequisites, "leavening-2")


--  add plastic as prereq due to bins
table.insert(data.raw["technology"]["ice-cream"].prerequisites, "plastics")
table.insert(data.raw["technology"]["animal-processing"].prerequisites, "plastics")

--  insert lvl 3 nutrients in between lvl 2 and animal husbandry (insert rather than set because it is set above for wood-processing and don't want to overwrite that)
table.insert(data.raw["technology"]["animal-husbandry"].prerequisites, "nutrient3")
data.raw["technology"]["nutrient3"].prerequisites = {"nutrient2"}

--  frying set milk processing and sugar and vegetable oil as a prerequisite
data.raw["technology"]["frying"].prerequisites = {"milk-processing", "sugar", "vegetable-oil"}
--  baking set milk processing and sugar as a prerequisite
data.raw["technology"]["baking"].prerequisites = {"milk-processing", "sugar"}

--  add syrup as a prereq for advanced-material-processing-2 (electric furnace/boiler)
table.insert(data.raw["technology"]["advanced-material-processing-2"].prerequisites, "syrup")

--  move strawberries to be after nutrient5, and pie and advanced-baking to be after both utility-science-pack and strawberries
data.raw["technology"]["strawberries"].prerequisites = {"nutrient5"}
data.raw["technology"]["pie"].prerequisites = {"utility-science-pack", "strawberries"}
data.raw["technology"]["advanced-baking"].prerequisites = {"utility-science-pack", "strawberries"}

--  set up nutrients 1 (made in nutrients.lua) as a prereq for nutrient2 and sugarcane
table.insert(data.raw["technology"]["nutrient2"].prerequisites, "nutrient1")
table.insert(data.raw["technology"]["sugar"].prerequisites, "nutrient1")

--  give rocket-silo all appropriate prereqs
--table.remove(data.raw["technology"]["rocket-silo"].prerequisites, "nutrient6")  --  no longer needed  --  nevermind, can only remove by position
--		  add these later when it exists
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "baklava")
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "pancakes")
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "more-pies")
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "pumpkin-cookies")
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "ice-cream-sundae")
table.insert(data.raw["technology"]["rocket-silo"].prerequisites, "croissants")


--  add apple pies to pie
table.insert(data.raw["technology"]["pie"].effects, {type="unlock-recipe", recipe="apple-pie"})
table.insert(data.raw["technology"]["pie"].effects, {type="unlock-recipe", recipe="apple-pie-cooked"})
table.insert(data.raw["technology"]["pie"].effects, {type="unlock-recipe", recipe="apple-pie-cooked-with-ice-cream"})
--  add ice cream and apples as prereqs to pie
table.insert(data.raw["technology"]["pie"].prerequisites, "ice-cream")
table.insert(data.raw["technology"]["pie"].prerequisites, "apples")

			
--  add additional plant recipes
table.insert(data.raw["technology"]["sugar"].effects, 2, {type="unlock-recipe", recipe="sugarcane-recipe-water"})
table.insert(data.raw["technology"]["sugar"].effects, 3, {type="unlock-recipe", recipe="sugarcane-recipe-fertilizer"})
table.insert(data.raw["technology"]["cocoa"].effects, 2, {type="unlock-recipe", recipe="cocoa-beans-recipe-water"})
table.insert(data.raw["technology"]["cocoa"].effects, 3, {type="unlock-recipe", recipe="cocoa-beans-recipe-fertilizer"})
table.insert(data.raw["technology"]["cinnamon"].effects, 2, {type="unlock-recipe", recipe="cinnamon-recipe-water"})
table.insert(data.raw["technology"]["cinnamon"].effects, 3, {type="unlock-recipe", recipe="cinnamon-recipe-fertilizer"})
table.insert(data.raw["technology"]["blueberries"].effects, 2, {type="unlock-recipe", recipe="blueberries-recipe-water"})
table.insert(data.raw["technology"]["blueberries"].effects, 3, {type="unlock-recipe", recipe="blueberries-recipe-fertilizer"})
table.insert(data.raw["technology"]["strawberries"].effects, 2, {type="unlock-recipe", recipe="strawberries-recipe-water"})
table.insert(data.raw["technology"]["strawberries"].effects, 3, {type="unlock-recipe", recipe="strawberries-recipe-fertilizer"})

--  add pie tin to pie
table.insert(data.raw["technology"]["pie"].effects, 1, {type="unlock-recipe", recipe="pie-tin"})

--  remove chem lab
--for key,value in pairs(data.raw["technology"]["animal-husbandry"].effects) do
--	if recipe == "chemical-plant" then
--		table.remove(effects, idx)
--		break
--	end
--end
--[[  never mind, keep enabled
for key,value in pairs(data.raw["technology"]["animal-husbandry"].effects) do
	if value.recipe == "chemical-plant" then
		table.remove(data.raw["technology"]["animal-husbandry"].effects, key)
		break
	end
end
]]
--table.remove(data.raw["technology"]["animal-husbandry"].effects, 1)  --  remove chem lab
--  add animal recipes to animal husbandry
--table.insert(data.raw["technology"]["animal-husbandry"].effects, 2, {type="unlock-recipe", recipe="egg-water"})
--table.insert(data.raw["technology"]["animal-husbandry"].effects, 3, {type="unlock-recipe", recipe="egg-water-food"})
--table.insert(data.raw["technology"]["animal-husbandry"].effects, 8, {type="unlock-recipe", recipe="u-milk-water"})
--table.insert(data.raw["technology"]["animal-husbandry"].effects, 9, {type="unlock-recipe", recipe="u-milk-water-food"})


	data.raw["technology"]["animal-husbandry"].effects =
    {
	    {type="unlock-recipe", recipe= "iron-stick"},
	    {type="unlock-recipe", recipe= "chemical-plant"},
	    {type="unlock-recipe", recipe= "barn"},
      {type = "unlock-recipe",recipe = "egg"},
		--{type = "unlock-recipe",recipe = "egg-water"},
		--{type = "unlock-recipe",recipe = "egg-water-food"},
      {type = "unlock-recipe",recipe = "chicken"},
      {type = "unlock-recipe",recipe = "chicken-recipe-egg"},
      {type = "unlock-recipe",recipe = "cow"},
      {type = "unlock-recipe",recipe = "u-milk"},
		--{type = "unlock-recipe",recipe = "u-milk-water"},
		--{type = "unlock-recipe",recipe = "u-milk-water-food"},
      {type = "unlock-recipe",recipe = "milk-pasteurization"},
      --{type = "unlock-recipe",recipe = "milk-filtering"},
      --{type = "unlock-recipe",recipe = "frosting"},
      --{type = "unlock-recipe",recipe = "butter-churning"},
      --{type = "unlock-recipe",recipe = "butter-solidification"},
      {type = "unlock-recipe",recipe = "breed-cow"},
		{type = "unlock-recipe",recipe = "pig"},
		{type = "unlock-recipe",recipe = "breed-pig"},
		
		{type = "unlock-recipe",recipe = "sheep"},
		{type = "unlock-recipe",recipe = "breed-sheep"},
		{type = "unlock-recipe",recipe = "wool"},
		--{type = "unlock-recipe",recipe = "wool-water"},
		--{type = "unlock-recipe",recipe = "wool-water-food"},
      {type = "unlock-recipe",recipe = "egg-dough"},
      {type = "unlock-recipe",recipe = "egg-bread"}
	}
	
	print(serpent.block(data.raw["technology"]["animal-husbandry"].effects))
	
--  add steel as a prereq for animal husbandry (due to steel for chem plant)
table.insert(data.raw["technology"]["animal-husbandry"].prerequisites, "steel-processing")


--  add boar and bull meat processing recipes if they are here as well as ram shearing (spoilage is enabled)
if feature_flags["spoiling"] then
	table.insert(data.raw["technology"]["animal-processing"].effects, 4, {type="unlock-recipe", recipe="beef-bull"})
	table.insert(data.raw["technology"]["animal-processing"].effects, 6, {type="unlock-recipe", recipe="pork-boar"})
	table.insert(data.raw["technology"]["animal-processing"].effects, 9, {type="unlock-recipe", recipe="mutton-ram"})
	--table.insert(data.raw["technology"]["animal-husbandry"].effects, 19, {type="unlock-recipe", recipe="wool-ram-water-food"})
	--table.insert(data.raw["technology"]["animal-husbandry"].effects, 19, {type="unlock-recipe", recipe="wool-ram-water"})
	--table.insert(data.raw["technology"]["animal-husbandry"].effects, 19, {type="unlock-recipe", recipe="wool-ram"})
	table.insert(data.raw["technology"]["animal-husbandry"].effects, 13, {type="unlock-recipe", recipe="wool-ram"})
end

--  add electric boiler to the electric furnace tech (already made syrup a prereq for it above)
table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type="unlock-recipe", recipe="bake-electric-boiler"})

--  add respective vegetable oil recipes
table.insert(data.raw["technology"]["cocoa"].effects, {type="unlock-recipe", recipe="vegetable-oil-cocoa-bean"})

--  add plastic basket to both berries (as they are now simultaneous) and plastic bin to ice cream
table.insert(data.raw["technology"]["strawberries"].effects, {type="unlock-recipe", recipe="plastic-basket"})
table.insert(data.raw["technology"]["blueberries"].effects, {type="unlock-recipe", recipe="plastic-basket"})
table.insert(data.raw["technology"]["ice-cream"].effects, {type="unlock-recipe", recipe="plastic-bin"})

--  add real chocolate chips
table.insert(data.raw["technology"]["chocolate-chips"].effects, {type="unlock-recipe", recipe="chocolate-chips"})


--  remove yellow science from ice cream and pie and set ice cream to follow blue science and pie to follow strawberries and blueberries
data.raw["technology"]["ice-cream"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      }
data.raw["technology"]["pie"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      }
data.raw["technology"]["ice-cream"].prerequisites = {"chemical-science-pack"}
data.raw["technology"]["pie"].prerequisites = {"strawberries", "blueberries"}
	
--  remove yellow science from advanced baking and chocolate chips and set chocolate chips to follow blue science
data.raw["technology"]["advanced-baking"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      }
data.raw["technology"]["chocolate-chips"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      }
data.raw["technology"]["advanced-baking"].prerequisites = {"strawberries"}
data.raw["technology"]["chocolate-chips"].prerequisites = {"chemical-science-pack"}
	
--  remove iron stick from its original techs (as it's now in Animal Husbandry)
for key,value in pairs(data.raw["technology"]["circuit-network"].effects) do
	if value.recipe == "iron-stick" then
		table.remove(data.raw["technology"]["circuit-network"].effects, key)
		break
	end
end
for key,value in pairs(data.raw["technology"]["concrete"].effects) do
	if value.recipe == "iron-stick" then
		table.remove(data.raw["technology"]["concrete"].effects, key)
		break
	end
end
for key,value in pairs(data.raw["technology"]["electric-energy-distribution-1"].effects) do
	if value.recipe == "iron-stick" then
		table.remove(data.raw["technology"]["electric-energy-distribution-1"].effects, key)
		break
	end
end
for key,value in pairs(data.raw["technology"]["railway"].effects) do
	if value.recipe == "iron-stick" then
		table.remove(data.raw["technology"]["railway"].effects, key)
		break
	end
end
	



