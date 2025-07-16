

data:extend(
  {
	  {  --  yeast; 30 min
		type = "module",
		name = "yeast-module",
		localised_name = {"item-name.yeast"},
		--localised_description = {"item-description.yeast"},
		icon = "__baketorio_plus__/graphics/yeast-icon.png",
		icon_size = 32,
		subgroup = "module",
		color_hint = { text = "S" },
		category = "yeast",
		tier = 1,
		order = "a[yeast]-a[yeast-module-1]",
		--inventory_move_sound = item_sounds.module_inventory_move,
		--pick_sound = item_sounds.module_inventory_pickup,
		--drop_sound = item_sounds.module_inventory_move,
		stack_size = 50,
		weight = 1 * kg,
		effect = {speed = 0.1, quality = -0.2},
	  },
	  {  --  yeast, salt, wrapper; 2 hours
		type = "module",
		name = "yeast-module-2",
		localised_name = {"item-name.yeast-packet"},
		icon = "__baketorio_plus__/graphics/yeast-packet-icon.png",
		icon_size = 32,
		subgroup = "module",
		category = "yeast",
		color_hint = { text = "S" },
		tier = 2,
		order = "a[yeast]-b[yeast-module-2]",
		stack_size = 50,
		weight = 2 * kg,
		effect = {speed = 0.2},
	  },
	  {  --  2 yeast, 2 salt, flour; 10 hours
		type = "module",
		name = "yeast-module-3",
		localised_name = {"item-name.bakers-flour"},
		icon = "__baketorio_plus__/graphics/bakers-flour-icon.png",
		icon_size = 32,
		subgroup = "module",
		color_hint = { text = "S" },
		category = "yeast",
		tier = 3,
		order = "a[yeast]-c[yeast-module-3]",
		stack_size = 50,
		weight = 4 * kg,
		effect = {speed = 0.4, productivity = 0.1},
	  },
	  
	  --  make items and recipes, leave actual tech to tech    ---  NO, modules ARE the items
	  --  make yeast item and yeast growth recipe (using sugar water)
	  --  yeast will spoil in 30 min to nothing
		  
		{
			type = "recipe",
			name = "yeast-propagation-recipe",
			localised_name = {"recipe-name.yeast-propagation"},
            category = "crafting-with-fluid",
			enabled = false,
			energy_required = 60,
			ingredients = {
                {type="item",name="yeast-module",amount=1},
                {type="fluid",name="sugar-water",amount=10},
			},
			results = {
				{type="item", name="yeast-module", amount=4}
			},
		},
		{
			type = "recipe",
			name = "yeast-module-2-recipe",
			localised_name = {"item-name.yeast-packet"},
            category = "crafting",
			enabled = false,
			energy_required = 5,
			ingredients = {
                {type="item",name="yeast-module",amount=1},
                {type="item",name="salt",amount=1},
                {type="item",name="paper-wrapper",amount=1},
			},
			results = {
				{type="item", name="yeast-module-2", amount=1}
			},
		},
		{
			type = "recipe",
			name = "yeast-module-3-recipe",
			localised_name = {"item-name.bakers-flour"},
            category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="yeast-module-2",amount=4},
                {type="item",name="flour",amount=1},
			},
			results = {
				{type="item", name="yeast-module-3", amount=1}
			},
			icon = "__baketorio_plus__/graphics/bakers-flour-icon.png",
			icon_size = 32,
		},
		{
			type = "recipe",
			name = "yeast-module-3-recipe-2",
			localised_name = {"item-name.bakers-flour"},
            category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
                {type="item",name="yeast-module",amount=4},
                {type="item",name="salt",amount=4},
                {type="item",name="flour",amount=1},
			},
			results = {
				{type="item", name="yeast-module-3", amount=1}
			},
			icon = "__baketorio_plus__/graphics/bakers-flour-icon.png",
			icon_size = 32,
		},
		
		
		--  yeast fruit scrubbing (50% chance to obtain, 90% chance to return fruit)
		{
			type = "recipe",
			name = "yeast-apple-recipe",
			localised_name = {"recipe-name.yeast-apple"},
            category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="apples", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, probability=0.5},
				{type="item", name="apples", amount=1, probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
		{
			type = "recipe",
			name = "yeast-peach-recipe",
			localised_name = {"recipe-name.yeast-peach"},
            category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="peaches", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, probability=0.5},
				{type="item", name="peaches", amount=1, probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
		{
			type = "recipe",
			name = "yeast-lemon-recipe",
			localised_name = {"recipe-name.yeast-lemon"},
            category = "crafting",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="lemons", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, probability=0.5},
				{type="item", name="lemons", amount=1, probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
  }
)

if feature_flags["spoiling"] then
    data.raw["recipe"]["yeast-propagation-recipe"].reset_freshness_on_craft = true
	data.raw["module"]["yeast-module"].spoil_ticks = 30*minute
	data.raw["module"]["yeast-module"].spoil_result = nil
	data.raw["module"]["yeast-module-2"].spoil_ticks = 2*hour
	data.raw["module"]["yeast-module-2"].spoil_result = nil
	data.raw["module"]["yeast-module-3"].spoil_ticks = 10*hour
	data.raw["module"]["yeast-module-3"].spoil_result = "flour"
end


--  make sure it's not in all recipes
local all_but_my_categories = {}
for key,value in pairs(data.raw["module-category"]) do
  if value.name ~= "yeast" then
    table.insert(all_but_my_categories, value.name)
  end
end
local all_mod_categories = {}
for key,value in pairs(data.raw["module-category"]) do
    table.insert(all_mod_categories, value.name)
end
local yeast_mod_categories = {"speed", "efficiency", "yeast"}
if feature_flags["quality"] then
    table.insert(yeast_mod_categories, "quality")
end

--  add to furnaces and assemblers (and butterizer) (check if they already have a list so as not to overwrite)
for key,value in pairs(data.raw["furnace"]) do
  if data.raw["furnace"][value.name].allowed_module_categories ~= nil then
	table.insert(data.raw["furnace"][value.name].allowed_module_categories, "yeast")
  else
    data.raw["furnace"][value.name].allowed_module_categories = all_mod_categories
  end
end
for key,value in pairs(data.raw["assembling-machine"]) do
  if data.raw["assembling-machine"][value.name].allowed_module_categories ~= nil then
	table.insert(data.raw["assembling-machine"][value.name].allowed_module_categories, "yeast")
  else
    data.raw["assembling-machine"][value.name].allowed_module_categories = all_mod_categories
  end
end
data.raw["furnace"]["butterizer"].allowed_module_categories = all_mod_categories

--  go through all recipes and check if they have a list. If not, add basic list, but if so, then reconstruct without yeast
for key,value in pairs(data.raw["recipe"]) do
  if value.allowed_module_categories == nil then
	value.allowed_module_categories = table.deepcopy(all_but_my_categories)
  else
    local present_categories = {}
    for key2,value2 in pairs(value.allowed_module_categories) do
      if value2 ~= "yeast" then
	    table.insert(present_categories, value2)
	  end
	end
	value.allowed_module_categories = present_categories
  end
end

--  list of recipes to use yeast and allow for productivity boost
local yeast_productivity_recipes = {"apple-fritter-recipe", "basic-dough-box-recipe", "filo-dough-recipe", "hardtack-box-recipe",
		"baklava-recipe", "pumpkin-batter-recipe", "advanced-cake-batter-recipe", "basic-batter-recipe", "blueberry-batter-recipe",
		"cheese-batter-recipe", "chocolate-batter-recipe", "hardtack-recipe", "advanced-cake-batter-cake-recipe",
		"basic-batter-cupcake-recipe", "blueberry-batter-scone-recipe", "cheese-batter-cake-recipe", "chocolate-batter-cupcake-recipe",
		"basic-dough-recipe", "advanced-cake-batter-cupcake-recipe", "basic-batter-cake-recipe", "blueberry-batter-doughnut-recipe",
		"chocolate-batter-cake-recipe", "sugar-dough-recipe", "pancake-batter-recipe", "blueberry-batter-muffin-recipe",
		"egg-dough-recipe", "chocolate-batter-doughnut-recipe", "fryer-dough-recipe", "fryer-dough-doughnut-recipe",
		"chocolate-chip-batter-recipe", "cinnamon-dough-recipe", "fryer-dough-bun-recipe", "basic-bread-recipe",
		"sugar-bread-recipe", "egg-bread-recipe", "cinnamon-bread-recipe", "chocolate-chip-buttered-dough-recipe", "brownie-recipe"}
--  list of recipes to use yeast and only allow for speed (non-productivity) boost (only yeast and yeast packets)
local yeast_speed_recipes = {"apple-pie-recipe", "buttered-dough-1-recipe", "buttered-dough-2-recipe", "buttered-dough-3-recipe",
		"buttered-dough-4-recipe", "buttered-dough-5-recipe", "buttered-dough-6-recipe", "buttered-dough-7-recipe",
		"chicken-pot-pie-recipe", "lemon-meringue-pie-recipe", "lemon-tart-recipe", "meat-pie-beef-recipe", "meat-pie-mutton-recipe",
		"peach-cobbler-recipe", "pecan-pie-recipe", "pumpkin-cookie-recipe", "pumpkin-pie-recipe", "sausage-roll-recipe",
		"blueberry-pie-recipe", "strawberry-pie-recipe", "apple-fritter-cooked-recipe", "fryer-dough-doughnut-cooked-recipe",
		"fryer-dough-bun-cooked-recipe", "baklava-cooked-recipe", "pecan-pie-cooked-recipe", "pumpkin-cookie-cooked-recipe",
		"pumpkin-pie-cooked-recipe", "basic-batter-cupcake-cooked-recipe", "pancake-cooked-recipe", "basic-batter-cake-cooked-recipe",
		"chocolate-chip-croissant-cooked-recipe", "croissant-cooked-recipe",
		"cheese-batter-cake-recipe", "chocolate-batter-cupcake-cooked-recipe", "chocolate-batter-cake-cooked-recipe",
		"chocolate-batter-doughnut-cooked-recipe", "chocolate-chip-cookie-recipe", "apple-pie-cooked-recipe", "lemon-meringue-pie-cooked-recipe",
		"lemon-tart-cooked-recipe", "peach-cobbler-cooked-recipe", "blueberry-batter-scone-cooked-recipe", "blueberry-batter-doughnut-cooked-recipe",
		"blueberry-batter-muffin-cooked-recipe", "blueberry-pie-cooked-recipe", "strawberry-pie-cooked-recipe", "chocolate-chip-croissant-recipe",
		"croissant-recipe", "advanced-cake-batter-cake-cooked-recipe", "advanced-cake-batter-cupcake-cooked-recipe", "chicken-pot-pie-cooked-recipe",
		"meat-pie-cooked-recipe", "sausage-roll-recipe"}

--  now that it's been removed from everything, set list of recipes that can use yeast, and loop through it (using same logic as above)
for key,value in pairs(yeast_productivity_recipes) do
		--  log(value)
  data.raw["recipe"][value].allow_productivity = true  --  the difference here
  if value.allowed_module_categories == nil then
	data.raw["recipe"][value].allowed_module_categories = table.deepcopy(yeast_mod_categories)
  else
    local present_categories = {}
    for key2,value2 in pairs(value.allowed_module_categories) do
	  table.insert(present_categories, value2)
	end
	table.insert(present_categories, "yeast")
	value.allowed_module_categories = present_categories
  end
end
for key,value in pairs(yeast_speed_recipes) do
		--  log(value)
  if value.allowed_module_categories == nil then
	data.raw["recipe"][value].allowed_module_categories = table.deepcopy(yeast_mod_categories)
  else
    local present_categories = {}
    for key2,value2 in pairs(value.allowed_module_categories) do
	  table.insert(present_categories, value2)
	end
	table.insert(present_categories, "yeast")
	value.allowed_module_categories = present_categories
  end
end















