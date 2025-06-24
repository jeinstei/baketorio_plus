


data.raw["item"]["butter"].fuel_category = "butter"
data.raw["item"]["butter"].fuel_value = "8.11MJ"





--local old_strawberry_recipe = table.deepcopy(data.raw["recipe"]["strawberry-recipe"])
--new_strawberry_recipe.name="expensive-strawberry-recipe"
--new_strawberry_recipe.energy_require = old_straberry_recipe.energy_require*3
--data:extend({expensive-straberry-recipe})

local butterizer_entity = table.deepcopy(data.raw["furnace"]["electric-furnace"])
butterizer_entity.name = "butterizer"
butterizer_entity.minable = {mining_time = 0.2, result = "butterizer"}
butterizer_entity.crafting_speed = 1
butterizer_entity.energy_source = { type = "burner", fuel_categories = {"butter"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = { pollution = 0 } }
butterizer_entity.localised_name = {"item-name.butterizer"}
butterizer_entity.graphics_set.animation.layers =
		{
          {
            filename = "__baketorio_plus__/graphics/butterizer.png",
            priority = "high",
            width = 239,
            height = 219,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
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
butterizer_entity.crafting_categories = {"butterize"}


local butterizer_item = table.deepcopy(data.raw["item"]["electric-furnace"])
butterizer_item.name = "butterizer"
butterizer_item.place_result = "butterizer"
butterizer_item.localised_name = {"item-name.butterizer"}


data:extend(
{
  butterizer_item,
  butterizer_entity
})







