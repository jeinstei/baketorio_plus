data:extend({
	{
  type = "furnace",
  name = "bake-burner-boiler",
  localised_name = {"item-name.bake-burner-boiler"},
  icon = "__base__/graphics/icons/boiler.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.4, result = "bake-burner-boiler" },
  max_health = 400,
  corpse = "boiler-remnants",
  dying_explosion = "boiler-explosion",
  crafting_categories = {"bake-boiling"},
  crafting_speed = 0.7,
  module_slots = 1,
  source_inventory_size = 0,
  result_inventory_size = 0,
  allowed_effects = {"speed", "consumption", "pollution"},
  allowed_module_categories = {"speed"},
  effect_recievers =
  {
    uses_beacon_effects = false,
  },
  resistances =
  {
    {
      type = "fire",
      percent = 50
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "impact",
      percent = 10
    }
  },
  collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
  selection_box = { { -1.5, -1 }, { 1.5, 1 } },
  fluid_boxes =
  {
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
      },
      production_type = "input",
    },
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
    }
  },
    energy_usage = "90kW",
		energy_consumption = "1.8MW",
		energy_source =
		{
		  type = "burner",
		  fuel_categories = {"chemical"},
		  effectivity = 1,
		  fuel_inventory_size = 1,
		  emissions_per_minute = { pollution = 30 },
		  light_flicker =
		  {
			color = {0,0,0},
			minimum_intensity = 0.6,
			maximum_intensity = 0.95
		  },
		  smoke =
		  {
			{
			  name = "smoke",
			  north_position = util.by_pixel(-38, -47.5),
			  south_position = util.by_pixel(38.5, -32),
			  east_position = util.by_pixel(20, -70),
			  west_position = util.by_pixel(-19, -8.5),
			  frequency = 15,
			  starting_vertical_speed = 0.0,
			  starting_frame_deviation = 60
			}
		  }
		},
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/boiler.ogg",
      volume = 0.7
    },
    --max_sounds_per_type = 3,
    audible_distance_modifier = 0.3,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  graphics_set =
  {
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-1-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0.5,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-1-E-idle.png",
            priority = "extra-high",
            width = 216,
            height = 301,
            shift = util.by_pixel(-3, 1.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 184,
            height = 194,
            scale = 0.5,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        },
      },
      south =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-1-S-idle.png",
            priority = "extra-high",
            width = 260,
            height = 192,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 311,
            height = 131,
            scale = 0.5,
            shift = util.by_pixel(29.75, 15.75),
            draw_as_shadow = true
          }
        },
      },
      west =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-1-W-idle.png",
            priority = "extra-high",
            width = 196,
            height = 273,
            shift = util.by_pixel(1.5, 7.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 206,
            height = 218,
            scale = 0.5,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true
          }
        },
      },
    },
  },
  water_reflection = boiler_reflection()
  },




	{
  type = "furnace",
  name = "bake-electric-boiler",
  localised_name = {"item-name.bake-electric-boiler"},
  icon = "__base__/graphics/icons/boiler.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.4, result = "bake-electric-boiler" },
  max_health = 400,
  corpse = "boiler-remnants",
  dying_explosion = "boiler-explosion",
  crafting_categories = {"bake-boiling"},
  crafting_speed = 1,
  module_slots = 2,
  source_inventory_size = 0,
  result_inventory_size = 0,
  allowed_effects = {"speed", "consumption", "pollution"},
  allowed_module_categories = {"speed", "efficiency"},
  effect_recievers =
  {
    uses_beacon_effects = false,
  },
  resistances =
  {
    {
      type = "fire",
      percent = 50
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "impact",
      percent = 10
    }
  },
  collision_box = { { -1.29, -0.79 }, { 1.29, 0.79 } },
  selection_box = { { -1.5, -1 }, { 1.5, 1 } },
  fluid_boxes =
  {
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
		{flow_direction = "input-output", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        {flow_direction = "input-output", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
		--  {flow_direction = "input", direction = defines.direction.west--[[@as int]], position = {-1, 0.5}},
        --  {flow_direction = "input", direction = defines.direction.east--[[@as int]], position = {1, 0.5}}
      },
      production_type = "input",
    },
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north--[[@as int]], position = {0, -0.5}}
      },
      production_type = "output",
    }
  },
  energy_usage = "1.7MW",
  energy_source =
  {
    type = "electric",
    emissions_per_minute = {pollution = 5},
    usage_priority = "secondary-input",
    drain = "100kW"
  },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/boiler.ogg",
      volume = 0.7
    },
    --max_sounds_per_type = 3,
    audible_distance_modifier = 0.3,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  },
  graphics_set =
  {
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-2-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0.5,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-2-E-idle.png",
            priority = "extra-high",
            width = 216,
            height = 301,
            shift = util.by_pixel(-3, 1.25),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 184,
            height = 194,
            scale = 0.5,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        },
      },
      south =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-2-S-idle.png",
            priority = "extra-high",
            width = 260,
            height = 192,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 311,
            height = 131,
            scale = 0.5,
            shift = util.by_pixel(29.75, 15.75),
            draw_as_shadow = true
          }
        },
      },
      west =
      {
        layers =
        {
          {
            filename = "__baketorio_plus__/graphics/boiler-2-W-idle.png",
            priority = "extra-high",
            width = 196,
            height = 273,
            shift = util.by_pixel(1.5, 7.75),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 206,
            height = 218,
            scale = 0.5,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true
          }
        },
      },
    },
  },
  water_reflection = boiler_reflection()
  },
})


--  data.raw["prototype"]["boiler"].boiler = x

if feature_flags["quality"] then
  table.insert(data.raw["furnace"]["bake-burner-boiler"].allowed_effects, "quality")
  table.insert(data.raw["furnace"]["bake-electric-boiler"].allowed_effects, "quality")
end
