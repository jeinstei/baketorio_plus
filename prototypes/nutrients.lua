--local serpent = require("serpent")

-- Remove recipe unlocks from nutrient recipes for clean slate
baketorio.clear_nutrient_recipes()
baketorio.build_nutrient_recipes(baketorio.nutrient_tech_table)