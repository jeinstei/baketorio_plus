

data.raw["item"]["wheat"].fuel_category = "wheat"
data.raw["item"]["wheat"].fuel_value = "1MJ"  -- 1/4 as coal



local barn_entity = table.deepcopy(data.raw["assembling-machine"]["greenhouse"])
barn_entity.name = "barn"
barn_entity.icon = "__baketorio_plus__/graphics/barn-icon.png"
barn_entity.icon_size = 32
barn_entity.minable = {mining_time = 0.2, result = "barn"}
barn_entity.crafting_speed = 1
--barn_entity.energy_source = {type = "void", usage_priority = "secondary-input", emissions_per_minute = { pollution = 10 }}
barn_entity.energy_source = { type = "burner", fuel_categories = {"wheat"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = { pollution = 10 } }

barn_entity.localised_name = {"item-name.barn"}

barn_entity.allowed_effects = {"consumption", "speed", "pollution"}
barn_entity.crafting_categories = {"barn"}

barn_entity.graphics_set.animation =
      {
        filename = "__baketorio_plus__/graphics/barn.png",
        width = 208,
        height = 208,
        frame_count = 1,
        scale=0.4,
        shift={0,-0.1}
      }
    --[[
	{
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 }
    },
	]]--
    --[[
	{
		type = "burner",
		fuel_categories = {"butter"},
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions_per_minute = { pollution = 0 }
	}
	]]--




data:extend(
{
  barn_entity,
  
    {
        type = "item",
        name = "barn",
		localised_name = {"item-name.barn"},
        icon = "__baketorio_plus__/graphics/barn-icon.png",
        icon_size = 32,
        subgroup = "production-machine",
        place_result = "barn",
        stack_size = 50
    },
		
    {
        type = "recipe",
        name = "barn",
        localised_name = {"item-name.barn"},
        categories = {"crafting"},
        subgroup = "production-machine",
        energy_required = 10,
        enabled = true,
        ingredients ={
            {type="item",name="wood",amount=30},
            {type="item",name="iron-stick",amount=6},
            {type="item",name="stone-brick",amount=5}
        },
        results = {
            {type="item",name="barn",amount=1}
        },
    },
})



--  add quality modules to greenhouses
if mods["quality"] then
  table.insert(data.raw["assembling-machine"]["barn"].allowed_effects, "quality")
  data.raw["assembling-machine"]["barn"].allowed_module_categories = {"efficiency", "speed", "quality"}
end


--  change to barn recipes
data.raw["recipe"]["egg"].categories = {"barn"}
--data.raw["recipe"]["egg-water"].category = "barn"
--data.raw["recipe"]["egg-water-food"].category = "barn"
data.raw["recipe"]["u-milk"].categories = {"barn"}
--data.raw["recipe"]["u-milk-water"].category = "barn"
--data.raw["recipe"]["u-milk-water-food"].category = "barn"
data.raw["recipe"]["wool"].categories = {"barn"}
--data.raw["recipe"]["wool-water"].category = "barn"
--data.raw["recipe"]["wool-water-food"].category = "barn"
if feature_flags["spoiling"] then
	data.raw["recipe"]["wool-ram"].categories = {"barn"}
--	data.raw["recipe"]["wool-ram-water"].category = "barn"
--	data.raw["recipe"]["wool-ram-water-food"].category = "barn"
end

data.raw["recipe"]["chicken-recipe-egg"].categories = {"barn"}
data.raw["recipe"]["breed-cow"].categories = {"barn"}
data.raw["recipe"]["breed-pig"].categories = {"barn"}
data.raw["recipe"]["breed-sheep"].categories = {"barn"}









