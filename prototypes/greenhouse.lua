--[[function northPipePicture()
  return
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
      priority = "extra-high",
      width = 71,
      height = 38,
      shift = util.by_pixel(2.25, 13.5),
      scale = 0.5
    }
end

 function eastPipePicture()
  return
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
      priority = "extra-high",
      width = 42,
      height = 76,
      shift = util.by_pixel(-24.5, 1),
      scale = 0.5
    }
end

function southPipePicture()
  return
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
      priority = "extra-high",
      width = 88,
      height = 61,
      shift = util.by_pixel(0, -31.25),
      scale = 0.5
    }
end

function westPipePicture()
  return
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5
    }
end
]]--

function assembler2pipepictures()
  return
  {
    north =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
      priority = "extra-high",
      width = 71,
      height = 38,
      shift = util.by_pixel(2.25, 13.5),
      scale = 0.5
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
      priority = "extra-high",
      width = 42,
      height = 76,
      shift = util.by_pixel(-24.5, 1),
      scale = 0.5
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
      priority = "extra-high",
      width = 88,
      height = 61,
      shift = util.by_pixel(0, -31.25),
      scale = 0.5
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5
    }
  }
end




data.raw["assembling-machine"]["greenhouse"].fluid_boxes =
  {
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepictures(),
      pipe_connections =
      {
        { flow_direction="input-output", direction = defines.direction.west, position = {-1, 0}},
        { flow_direction="input-output", direction = defines.direction.east, position = {1, 0}},
        { flow_direction="input-output", direction = defines.direction.south, position = {0, 1}}
      },
      production_type = "input",
    },
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepictures(),
      pipe_connections =
      {
        { flow_direction="output", direction = defines.direction.north, position = {0, -1}}
      },
      production_type = "output",
    }
  }

 --[[
data.raw["assembling-machine"],["greenhouse"].graphics_set =
    {
		animation =
		{
			north =
			{
				layers =
				{
					filename = "__baketorio__/graphics/greenhouse.png",
					width = 208,
					height = 208,
					frame_count = 1,
					scale=0.4,
					shift={0,-0.1}
				}
			},
		},
    },
]]--

--  add quality modules to greenhouses
if mods["quality"] then
  table.insert(data.raw["assembling-machine"]["greenhouse"].allowed_effects, "quality")
  --table.insert(data.raw["assembling-machine"]["greenhouse"].allowed_module_categories, "quality")
  table.insert(data.raw["assembling-machine"]["organic-synthesizer"].allowed_effects, "quality")
  --table.insert(data.raw["assembling-machine"]["organic-synthesizer"].allowed_module_categories, "quality")
  --data.raw["assembling-machine"]["greenhouse"].allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
  data.raw["assembling-machine"]["greenhouse"].allowed_module_categories = {"efficiency", "speed", "quality"}
  --data.raw["assembling-machine"]["organic-synthesizer"].allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
  data.raw["assembling-machine"]["organic-synthesizer"].allowed_module_categories = {"efficiency", "speed", "quality"}
end
