

local butcher_entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
butcher_entity.name = "butcher"
butcher_entity.minable = {mining_time = 0.2, result = "butcher"}
butcher_entity.crafting_speed = 1
butcher_entity.localised_name = {"item-name.butcher"}
butcher_entity.graphics_set =
    {
      animation =
      {
        filename = "__baketorio_plus__/graphics/butcher.png",
        width = 208,
        height = 208,
        frame_count = 1,
        scale=0.4,
        shift={0,-0.1}
      },
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
butcher_entity.crafting_categories = {"butcher"}


local butcher_item = table.deepcopy(data.raw["item"]["assembling-machine-2"])
butcher_item.name = "butcher"
butcher_item.place_result = "butcher"
butcher_item.localised_name = {"item-name.butcher"}


data:extend(
{
  butcher_item,
  butcher_entity
})



--[[
  {
    type = "assembling-machine",
    name = "assembling-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "assembling-machine-2"},
    max_health = 350,
    corpse = "assembling-machine-2-remnants",
    dying_explosion = "assembling-machine-2-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 1} }},
        secondary_draw_orders = { north = -1 }
      }
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "assembling-machine",
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5
          }
        }
      },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/assembling-machine-t2-1.ogg", volume = 0.45, audible_distance_modifier = 0.5},
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},

    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 }
    },
    energy_usage = "150kW",
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
  },
]]



