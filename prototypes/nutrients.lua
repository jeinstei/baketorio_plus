--local serpent = require("serpent")

local iconSize = 32
local overlayScale = 0.5

local adjustSize = iconSize / 4
local upperLeft = {-adjustSize,-adjustSize}
local upperRight = {adjustSize,-adjustSize}
local lowerLeft = {-adjustSize,adjustSize}
local lowerRight = {adjustSize,adjustSize}

local overlayOffsets = {upperLeft, upperRight, lowerLeft, lowerRight}


data.raw["technology"]["nutrient1"].prerequisites = {"automation-science-pack"}
data.raw["technology"]["nutrient1"].unit =
        {
          count = 10,
          ingredients = {
            {"automation-science-pack", 1}
          },
          time = 30
        }
data.raw["technology"]["nutrient2"].unit.count = 20


-- Remove recipe unlocks from nutrient recipes for clean slate
local nlist = {"nutrient1", "nutrient2", "nutrient3", "nutrient4", "nutrient5", "nutrient6", "nutrient7"}
for _,v in ipairs(nlist) do
    data.raw["technology"][v].effects = {}
end

-- Remove old nutrient recipes before rebuild
for k, recipe in pairs(data.raw["recipe"]) do
    if recipe.subgroup == "nutrients" then
        data.raw["recipe"][k] = nil
    end
end


--  rerun all of this stuff from the base mod (...should work?)
local foods = {}

for key,value in pairs(data.raw["item"]) do
    if(value.tastiness ~= nil and value.not_edible ~= true) then
        foods[#foods+1] = value;
    end
end

for key,value in pairs(data.raw["capsule"]) do
    if(value.tastiness ~= nil and value.not_edible ~= true) then
        foods[#foods+1] = value;
    end
end

-- Supports negative tastiness setting

for key,value in pairs(foods) do
    if (value.type == "capsule") then
        value.capsule_action = baketorio.capsule_action(value.tastiness*10)
    end
end

local c = 0

-- Build nutrient ingredients for tasty recipes
for i=1,#foods-1 do
    local t;
    local ingredient1 = foods[i].name
    local nutrientData = baketorio.get_nutrient(foods[i].tastiness)
    if(nutrientData.name ~= "none") then
        baketorio.makeRecipe(nutrientData.name,nutrientData.amount,{{type="item", name=ingredient1, amount=1}},c);
        c = c + 1
    end
    for j=i+1,#foods do
        local ingredient2 = foods[j].name
        t = foods[i].tastiness + foods[j].tastiness
        if(foods[j].tastiness < t/5) then
            goto continue
        end
        if(foods[i].tastiness < t/5) then
            goto continue
        end
        if(foods[i].cant_mix_with == foods[j].name) then
            goto continue
        end
        if(foods[j].cant_mix_with == foods[i].name) then
            goto continue
        end
        nutrientData = baketorio.get_nutrient(t)
        if(nutrientData.name ~= "none") then
            baketorio.makeRecipe(nutrientData.name,nutrientData.amount,{{type="item", name=ingredient1, amount=1},{type="item", name=ingredient2, amount=1}},c);
            c = c + 1
        end
        ::continue::
    end
end