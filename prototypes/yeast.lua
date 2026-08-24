

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
		effect = {speed = 0.1},
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
			name = "yeast-propagation",
			localised_name = {"recipe-name.yeast-propagation"},
            categories = {"crafting-with-fluid"},
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
			name = "yeast-module-2",
			localised_name = {"item-name.yeast-packet"},
            categories = {"crafting"},
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
			name = "yeast-module-3",
			localised_name = {"item-name.bakers-flour"},
            categories = {"crafting"},
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
            categories = {"crafting"},
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
			name = "yeast-apple",
			localised_name = {"recipe-name.yeast-apple"},
            categories = {"crafting"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="apples", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, independent_probability=0.5},
				{type="item", name="apples", amount=1, independent_probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
		{
			type = "recipe",
			name = "yeast-peach",
			localised_name = {"recipe-name.yeast-peach"},
            categories = {"crafting"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="peaches", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, independent_probability=0.5},
				{type="item", name="peaches", amount=1, independent_probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
		{
			type = "recipe",
			name = "yeast-lemon",
			localised_name = {"recipe-name.yeast-lemon"},
            categories = {"crafting"},
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type="item", name="lemons", amount=1}
			},
			results = {
				{type="item", name="yeast-module", amount=1, independent_probability=0.5},
				{type="item", name="lemons", amount=1, independent_probability=0.9}
			},
			main_product = "yeast-module",
			--icon = "__baketorio_plus__/graphics/yeast-icon.png",
			--icon_size = 32,
		},
	}
)

if feature_flags["spoiling"] then
	for key,value in pairs(data.raw["recipe"]["yeast-propagation"].results) do
		value.reset_freshness_on_craft = true
	end
	data.raw["module"]["yeast-module"].spoil_ticks = 30*minute
	data.raw["module"]["yeast-module"].spoil_result = nil
	data.raw["module"]["yeast-module-2"].spoil_ticks = 2*hour
	data.raw["module"]["yeast-module-2"].spoil_result = "salt"
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
	data.raw["module"]["yeast-module"].effect = {speed = 0.1, quality = -0.2}
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
local yeast_productivity_recipes = {"apple-fritter", "basic-dough-box", "filo-dough", "hardtack-box",
		"baklava", "pumpkin-batter", "advanced-cake-batter", "basic-batter", "blueberry-batter",
		"cheese-batter", "chocolate-batter", "hardtack", "advanced-cake-batter-cake",
		"basic-batter-cupcake", "blueberry-batter-scone", "cheese-batter-cake", "chocolate-batter-cupcake",
		"basic-dough", "advanced-cake-batter-cupcake", "basic-batter-cake", "blueberry-batter-doughnut",
		"chocolate-batter-cake", "sugar-dough", "pancake-batter", "blueberry-batter-muffin",
		"egg-dough", "chocolate-batter-doughnut", "fryer-dough", "fryer-dough-doughnut",
		"chocolate-chip-batter", "cinnamon-dough", "fryer-dough-bun", "basic-bread",
		"sugar-bread", "egg-bread", "cinnamon-bread", "chocolate-chip-buttered-dough", "brownie"}
--  list of recipes to use yeast and only allow for speed (non-productivity) boost (only yeast and yeast packets)
local yeast_speed_recipes = {"apple-pie", "buttered-dough-1", "buttered-dough-2", "buttered-dough-3",
		"buttered-dough-4", "buttered-dough-5", "buttered-dough-6", "buttered-dough-7",
		"chicken-pot-pie", "lemon-meringue-pie", "lemon-tart", "meat-pie-beef", "meat-pie-mutton",
		"peach-cobbler", "pecan-pie", "pumpkin-cookie", "pumpkin-pie", "sausage-roll",
		"blueberry-pie", "strawberry-pie", "apple-fritter-cooked", "fryer-dough-doughnut-cooked",
		"fryer-dough-bun-cooked", "baklava-cooked", "pecan-pie-cooked", "pumpkin-cookie-cooked",
		"pumpkin-pie-cooked", "basic-batter-cupcake-cooked", "pancake-cooked", "basic-batter-cake-cooked",
		"chocolate-chip-croissant-cooked", "croissant-cooked",
		"cheese-batter-cake", "chocolate-batter-cupcake-cooked", "chocolate-batter-cake-cooked",
		"chocolate-batter-doughnut-cooked", "chocolate-chip-cookie", "apple-pie-cooked", "lemon-meringue-pie-cooked",
		"lemon-tart-cooked", "peach-cobbler-cooked", "blueberry-batter-scone-cooked", "blueberry-batter-doughnut-cooked",
		"blueberry-batter-muffin-cooked", "blueberry-pie-cooked", "strawberry-pie-cooked", "chocolate-chip-croissant",
		"croissant", "advanced-cake-batter-cake-cooked", "advanced-cake-batter-cupcake-cooked", "chicken-pot-pie-cooked",
		"meat-pie-cooked", "sausage-roll"}

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















