




require("prototypes.misc")  --  load new categories first
require("prototypes.fluids")
--  require("prototypes.entities")
require("prototypes.boilers")
require("prototypes.butcher")
require("prototypes.items")
require("prototypes.fluid-recipes")  --  must be after items but before item-recipes because of bag stuff at the end
require("prototypes.item-recipes")
require("prototypes.wood")
require("prototypes.greenhouse")
require("prototypes.plants")
require("prototypes.butter")

require("prototypes.nutrients")  --  must be before tech so that the nutrient 1 tech exists for technologies to use

require("prototypes.technologies")


if feature_flags["spoiling"] then

	require("prototypes.animal-aging")
	
end




--[[
to do:

move chem plant to be unlocked in animal husbandry
light oil (vegetable) from seeds, unlocked in frying

baklava, peacan pie
neopolaton ice cream (1 of each flavour into 3 tubs), then combine with peanuts and chocolate sauce (chocolate and milk) for neopolaton sundae
pumpkin cookies, return seeds after turning pumpkin into pulp, return (mostly) plastic bin from pulp after making dough

return plastic baskets after using blueberries or strawberries (add to pie recipes, with a 8-10 and 2-3 return)

chocolate sauce unlocked both in croissants and sundaes

spaceship part (2,3?) built with baklava, peacan pie, pumpkin cookie(s), ice cream sundae, pancakes with syrup, and chocolate croissant with white chocolate drizzle




next big update, add spoilage to animals
3 stages: infant, juvenile, adult
they can only have a stack limit of 1
have them last like 5-10 hours, and have the breeding recipe give the infant (instant spoilage, so that it gives a full juvenile while keeping the (average of) the adults' spoilage)
juveniles can take like an hour to become adults
give eggs spoilage too; after an hour, 98% of the time disappear, 2% of the time become an infant chick(en)

also, middle step to roll croissants



after white sceince:
add pigs, and then butchery, and then meat pie (beef) sausage roll (pork) chicken pot pie (chicken with some some sort of gravy from a starch) for a meat baking science, is needed for additional military sciences
add exotic alien fruit for alien fruit tarts for alien baking science, which unlock character abilities (like longer reach and faster speed); see "quality of life research" mod
add candies maybe? Candied nuts (syrup and nuts (almonds and peanuts), mixed then baked), rock candy (sugar water and a wooden stick, long wait time), and maybe fudge (should have all the ingredients, sugar, milk/cream, butter, and chocolate and/or nuts)


maybe add lemons and also make meringue; could then do lemon squares, lemon meringue pie, and baked alaska

with apples, apple pie for tech food but add apple fritters (with cinnamon) with apple tech
]]--





