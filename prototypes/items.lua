
data:extend(
    {
        {
            type = "item",
            name = "bake-burner-boiler",
			localised_name = {"item-name.bake-burner-boiler"},
			icon = "__base__/graphics/icons/boiler.png",
			subgroup = "energy",
			order = "b[steam-power]-a[boiler]",
            place_result = "bake-burner-boiler",
            stack_size = 20
        },
        {
            type = "item",
            name = "bake-electric-boiler",
			localised_name = {"item-name.bake-electric-boiler"},
			icon = "__base__/graphics/icons/boiler.png",
			subgroup = "energy",
			order = "b[steam-power]-a[boiler]",
            place_result = "bake-electric-boiler",
            stack_size = 20
        },
		
        {
            type = "item",
            name = "plastic-bin",
			localised_name = {"item-name.plastic-bin"},
            icon = "__baketorio_plus__/graphics/plastic-bin.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "plastic-basket",
			localised_name = {"item-name.plastic-basket"},
            icon = "__baketorio_plus__/graphics/plastic-basket.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "metal-bucket",
			localised_name = {"item-name.metal-bucket"},
            icon = "__baketorio_plus__/graphics/metal-bucket.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "pie-tin",
			localised_name = {"item-name.pie-tin"},
            icon = "__baketorio_plus__/graphics/pie-tin.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "bushel-basket",
			localised_name = {"item-name.bushel-basket"},
            icon = "__baketorio_plus__/graphics/bushel-basket.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
		
        {
            type = "item",
            name = "wool",
			localised_name = {"item-name.wool"},
            icon = "__baketorio_plus__/graphics/wool.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 200
        },
        {
            type = "item",
            name = "yarn",
			localised_name = {"item-name.yarn"},
            icon = "__baketorio_plus__/graphics/yarn.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "fabric",
			localised_name = {"item-name.fabric"},
            icon = "__baketorio_plus__/graphics/fabric.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
        {
            type = "item",
            name = "bag",
			localised_name = {"item-name.bag"},
            icon = "__baketorio_plus__/graphics/bag.png",
            icon_size = 32,
			subgroup = "intermediate-product",
            stack_size = 100
        },
		
		
        {
            type = "item",
            name = "flour-box",
			localised_name = {"item-name.flour-box"},
            icon = "__baketorio_plus__/graphics/flour-box.png",
            icon_size = 32,
			subgroup = "ingredient",
            stack_size = 100
        },
		
        {
            type = "item",
            name = "nuts",
			localised_name = {"item-name.nuts"},
            tastiness=1,
            icon = "__baketorio_plus__/graphics/nuts.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 100,
        },
        {
            type = "item",
            name = "almonds",
			localised_name = {"item-name.almonds"},
            tastiness=1,
            icon = "__baketorio_plus__/graphics/almonds.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pistachios",
			localised_name = {"item-name.pistachios"},
            tastiness=1,
            icon = "__baketorio_plus__/graphics/pistachios.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pecans",
			localised_name = {"item-name.pecans"},
            tastiness=1,
            icon = "__baketorio_plus__/graphics/pecans.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "peanuts",
			localised_name = {"item-name.peanuts"},
            tastiness=1,
            icon = "__baketorio_plus__/graphics/peanuts.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "peanut-butter",
			localised_name = {"item-name.peanut-butter"},
            tastiness=6,
            icon = "__baketorio_plus__/graphics/peanut-butter.png",
            icon_size = 32,
            --subgroup = "ingredient",
            group = "food",
            subgroup = "milk",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "almond-butter",
			localised_name = {"item-name.almond-butter"},
            tastiness=6,
            icon = "__baketorio_plus__/graphics/almond-butter.png",
            icon_size = 32,
            --subgroup = "ingredient",
            group = "food",
            subgroup = "milk",
            stack_size = 100,
        },
		
		
        {
            type = "item",
            name = "pumpkin-seeds",
			localised_name = {"item-name.pumpkin-seeds"},
            icon = "__baketorio_plus__/graphics/seeds-pumpkin.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 100,
            fuel_category = "chemical",
            fuel_value = "10kJ"
        },
        {
            type = "item",
            name = "pumpkin",
			localised_name = {"item-name.pumpkin"},
            icon = "__baketorio_plus__/graphics/pumpkin.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pumpkin-pulp",
			localised_name = {"item-name.pumpkin-pulp"},
            icon = "__baketorio_plus__/graphics/pumpkin-pulp.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
		
        {
            type = "item",
            name = "chocolate-chips",
			localised_name = {"item-name.chocolate-chips"},
            icon = "__baketorio_plus__/graphics/chocolate-chips.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
		
        {
            type = "item",
            name = "slightly-buttered-dough",
			localised_name = {"item-name.slightly-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pretty-buttered-dough",
			localised_name = {"item-name.pretty-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "fairly-buttered-dough",
			localised_name = {"item-name.fairly-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "very-buttered-dough",
			localised_name = {"item-name.very-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "incredibly-buttered-dough",
			localised_name = {"item-name.incredibly-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "extremely-buttered-dough",
			localised_name = {"item-name.extremely-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "fully-buttered-dough",
			localised_name = {"item-name.fully-buttered-dough"},
            icon = "__baketorio_plus__/graphics/buttered-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
        {
            type = "item",
            name = "croissant",
			localised_name = {"item-name.croissant"},
            icon = "__baketorio_plus__/graphics/croissant.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "croissant-cooked",
			localised_name = {"item-name.croissant-cooked"},
            tastiness=8,
            icon = "__baketorio_plus__/graphics/croissant-cooked.png",
            icon_size = 32,
			group = "food",
            subgroup = "croissant",
            stack_size = 100,
        },
        {
            type = "item",
            name = "chocolate-chip-buttered-dough",
			localised_name = {"item-name.chocolate-chip-buttered-dough"},
            icon = "__baketorio_plus__/graphics/chocolate-chip-buttered-dough.png",
            icon_size = 32,
			group = "food",
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "chocolate-chip-croissant",
			localised_name = {"item-name.chocolate-chip-croissant"},
            icon = "__baketorio_plus__/graphics/chocolate-chip-croissant.png",
            icon_size = 32,
			group = "food",
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "chocolate-chip-croissant-cooked",
			localised_name = {"item-name.chocolate-chip-croissant-cooked"},
            tastiness=10,
            icon = "__baketorio_plus__/graphics/chocolate-chip-croissant-cooked.png",
            icon_size = 32,
			group = "food",
            subgroup = "croissant",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "chocolate-chip-croissant-cooked-white-drizzle",
			localised_name = {"item-name.chocolate-chip-croissant-cooked-white-drizzle"},
            tastiness=12,
            icon = "__baketorio_plus__/graphics/chocolate-chip-croissant-cooked-white-drizzle.png",
            icon_size = 32,
			group = "food",
            subgroup = "croissant",
            stack_size = 100,
        },
		
		
		
        {
            type = "item",
            name = "cocoa-butter",
			localised_name = {"item-name.cocoa-butter"},
            icon = "__baketorio_plus__/graphics/cocoa-butter.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
		
		
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "chocolate-ice-cream",
			localised_name = {"item-name.chocolate-ice-cream"},
            tastiness=8,
            icon = "__baketorio_plus__/graphics/chocolate-ice-cream.png",
            icon_size = 32,
            group = "food",
            subgroup = "milk",
            stack_size = 100
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "strawberry-ice-cream",
			localised_name = {"item-name.strawberry-ice-cream"},
            tastiness=8,
            icon = "__baketorio_plus__/graphics/strawberry-ice-cream.png",
            icon_size = 32,
            group = "food",
            subgroup = "milk",
            stack_size = 100
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "neapolitan-ice-cream",
			localised_name = {"item-name.neapolitan-ice-cream"},
            tastiness=10,
            icon = "__baketorio_plus__/graphics/neapolitan-ice-cream.png",
            icon_size = 32,
            group = "food",
            subgroup = "milk",
            stack_size = 100
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "ice-cream-sundae",
			localised_name = {"item-name.ice-cream-sundae"},
            tastiness=15,
            icon = "__baketorio_plus__/graphics/ice-cream-sundae.png",
            icon_size = 32,
            group = "food",
            subgroup = "milk",
            stack_size = 50
        },
		
		
        {
            type = "item",
            name = "pancake-batter",
			localised_name = {"item-name.pancake-batter"},
            icon = "__baketorio_plus__/graphics/pancake-batter.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pancake-cooked",
			localised_name = {"item-name.pancake-cooked"},
            tastiness=5,
            icon = "__baketorio_plus__/graphics/pancake-cooked.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pancakes-with-syrup",
			localised_name = {"item-name.pancakes-with-syrup"},
            tastiness=17,
            icon = "__baketorio_plus__/graphics/pancakes-with-syrup.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
		
        {
            type = "item",
            name = "filo-dough",
			localised_name = {"item-name.filo-dough"},
            icon = "__baketorio_plus__/graphics/filo-dough.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "baklava",
			localised_name = {"item-name.baklava"},
            icon = "__baketorio_plus__/graphics/baklava.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "baklava-cooked",
			localised_name = {"item-name.baklava-cooked"},
            tastiness=15,
            icon = "__baketorio_plus__/graphics/baklava-cooked.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
		
        {
            type = "item",
            name = "pumpkin-pie",
			localised_name = {"item-name.pumpkin-pie"},
            icon = "__baketorio_plus__/graphics/pumpkin-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pumpkin-pie-cooked",
			localised_name = {"item-name.pumpkin-pie-cooked"},
            tastiness=20,
            icon = "__baketorio_plus__/graphics/pumpkin-pie-cooked.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pumpkin-pie-cooked-with-ice-cream",
			localised_name = {"item-name.pumpkin-pie-cooked-with-ice-cream"},
            tastiness=22,
            icons = {
                {icon = "__baketorio_plus__/graphics/pumpkin-pie-cooked.png", icon_size=32},
                {icon = "__baketorio__/graphics/plain-ice-cream-sub.png", icon_size=32}
            },
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
        {
            type = "item",
            name = "pumpkin-batter",
			localised_name = {"item-name.pumpkin-batter"},
            icon = "__baketorio_plus__/graphics/pumpkin-batter.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pumpkin-cookie",
			localised_name = {"item-name.pumpkin-cookie"},
            icon = "__baketorio_plus__/graphics/pumpkin-cookie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pumpkin-cookie-cooked",
			localised_name = {"item-name.pumpkin-cookie-cooked"},
            tastiness=9,
            icon = "__baketorio_plus__/graphics/pumpkin-cookie-cooked.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pumpkin-cookie-glazed",
			localised_name = {"item-name.pumpkin-cookie-glazed"},
            tastiness=12,
            icon = "__baketorio_plus__/graphics/pumpkin-cookie-frosted.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
		
        {
            type = "item",
            name = "pecan-pie",
			localised_name = {"item-name.pecan-pie"},
            icon = "__baketorio_plus__/graphics/pecan-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "pecan-pie-cooked",
			localised_name = {"item-name.pecan-pie-cooked"},
            tastiness=20,
            icon = "__baketorio_plus__/graphics/pecan-pie-cooked.png",
            icon_size = 32,
            group = "food",
            subgroup = "basic",
            stack_size = 50
        },
		
		
		
        {
            type = "item",
            name = "pig",
			localised_name = {"item-name.pig"},
            icon = "__baketorio_plus__/graphics/pig.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 50
        },
        {
            type = "item",
            name = "sheep",
			localised_name = {"item-name.sheep"},
            icon = "__baketorio_plus__/graphics/sheep.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 50,
        },
		
        {
            type = "item",
            name = "beef",
			localised_name = {"item-name.beef"},
            icon = "__baketorio_plus__/graphics/beef.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "pork",
			localised_name = {"item-name.pork"},
            icon = "__baketorio_plus__/graphics/pork.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "mutton",
			localised_name = {"item-name.mutton"},
            icon = "__baketorio_plus__/graphics/mutton.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "chicken-meat",
			localised_name = {"item-name.chicken-meat"},
            icon = "__baketorio_plus__/graphics/chicken.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
		
        {
            type = "item",
            name = "meat-pie",
			localised_name = {"item-name.meat-pie"},
            icon = "__baketorio_plus__/graphics/meat-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "meat-pie-cooked",
			localised_name = {"item-name.meat-pie-cooked"},
            tastiness=8,
            icon = "__baketorio_plus__/graphics/meat-pie-cooked.png",
            icon_size = 32,
            subgroup = "meat",
            stack_size = 100,
        },
        {
            type = "item",
            name = "chicken-pot-pie",
			localised_name = {"item-name.chicken-pot-pie"},
            icon = "__baketorio_plus__/graphics/chicken-pot-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "chicken-pot-pie-cooked",
			localised_name = {"item-name.chicken-pot-pie-cooked"},
            tastiness=5,
            icon = "__baketorio_plus__/graphics/chicken-pot-pie-cooked.png",
            icon_size = 32,
            subgroup = "meat",
            stack_size = 100,
        },
        {
            type = "item",
            name = "sausage-roll",
			localised_name = {"item-name.sausage-roll"},
            icon = "__baketorio_plus__/graphics/sausage-roll.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            name = "sausage-roll-cooked",
			localised_name = {"item-name.sausage-roll-cooked"},
            tastiness=7,
            icon = "__baketorio_plus__/graphics/sausage-roll-cooked.png",
            icon_size = 32,
            subgroup = "meat",
            stack_size = 100,
        },
		
		
		
		--apple fritter same amount of cinnamon as cinnamon bun and tastiness+1
		--[[
		total things to add:
		apples, peaches, lemons
		meringue, meringue cookies (just cooked meringue, no middle step, 1 -> 4) (Meringue tech)
		apple fritter, apple fritter cooked (same as donut, as part of Apples)
		apple pie, apple pie cooked (as part of Pie)
		peach cobbler, peach cobbler cooked (as part of Peaches)
		lemon juice, lemon curd (uses gelatin and lemon juice, and plastic bin), lemon tart (gives back bin), and lemon tart cooked (as part of Lemons, following Pigs)
		lemon meringue pie, lemon meringue pie cooked (as part of More Pies, which now much follow Meringue)
		]]
        {
            type = "item",
            name = "apple-seeds",
			localised_name = {"item-name.apple-seeds"},
            icon = "__baketorio_plus__/graphics/seeds-apple.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 100,
            fuel_category = "chemical",
            fuel_value = "10kJ"
        },
        {
            type = "item",
            name = "apples",
			localised_name = {"item-name.apples"},
            icon = "__baketorio_plus__/graphics/apples.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "peach-seeds",
			localised_name = {"item-name.peach-seeds"},
            icon = "__baketorio_plus__/graphics/seeds-peach.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 100,
            fuel_category = "chemical",
            fuel_value = "10kJ"
        },
        {
            type = "item",
            name = "peaches",
			localised_name = {"item-name.peaches"},
            icon = "__baketorio_plus__/graphics/peaches.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "lemon-seeds",
			localised_name = {"item-name.lemon-seeds"},
            icon = "__baketorio_plus__/graphics/seeds-lemon.png",
            icon_size = 32,
            subgroup = "seeds",
            stack_size = 100,
            fuel_category = "chemical",
            fuel_value = "10kJ"
        },
        {
            type = "item",
            name = "lemons",
			localised_name = {"item-name.lemons"},
            icon = "__baketorio_plus__/graphics/lemons.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "meringue",
			localised_name = {"item-name.meringue"},
            icon = "__baketorio_plus__/graphics/meringue.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=2,
            name = "meringue-cookies",
			localised_name = {"item-name.meringue-cookies"},
            icon = "__baketorio_plus__/graphics/meringue-cookies.png",
            icon_size = 32,
            subgroup = "milk",
            stack_size = 100,
        },
        {
            type = "item",
            name = "apple-fritter",
			localised_name = {"item-name.apple-fritter"},
            icon = "__baketorio_plus__/graphics/apple-fritter.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {  --  tastiness 7
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=7,
            name = "apple-fritter-cooked",
			localised_name = {"item-name.apple-fritter-cooked"},
            icon = "__baketorio_plus__/graphics/apple-fritter-cooked.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
        {  --  tastiness 8
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=8,
            name = "apple-fritter-glazed",
			localised_name = {"item-name.apple-fritter-glazed"},
            icon = "__baketorio_plus__/graphics/apple-fritter-glazed.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "item",
            name = "apple-pie",
			localised_name = {"item-name.apple-pie"},
            icon = "__baketorio_plus__/graphics/apple-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=4,
            name = "apple-pie-cooked",
			localised_name = {"item-name.apple-pie-cooked"},
            icon = "__baketorio_plus__/graphics/apple-pie-cooked.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=5,
            name = "apple-pie-cooked-with-ice-cream",
			localised_name = {"item-name.apple-pie-cooked-with-ice-cream"},
            icons = {
                {icon = "__baketorio_plus__/graphics/apple-pie-cooked.png", icon_size=32},
                {icon = "__baketorio__/graphics/plain-ice-cream-sub.png", icon_size=32}
            },
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "item",
            name = "peach-cobbler",
			localised_name = {"item-name.peach-cobbler"},
            icon = "__baketorio_plus__/graphics/peach-cobbler.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=4,
            name = "peach-cobbler-cooked",
			localised_name = {"item-name.peach-cobbler-cooked"},
            icon = "__baketorio_plus__/graphics/peach-cobbler-cooked.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=5,
            name = "peach-cobbler-cooked-with-ice-cream",
			localised_name = {"item-name.peach-cobbler-cooked-with-ice-cream"},
            icons = {
                {icon = "__baketorio_plus__/graphics/peach-cobbler-cooked.png", icon_size=32},
                {icon = "__baketorio__/graphics/plain-ice-cream-sub.png", icon_size=32}
            },
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "item",
            name = "lemon-curd",
			localised_name = {"item-name.lemon-curd"},
            icon = "__baketorio_plus__/graphics/lemon-curd.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "item",
            name = "lemon-tart",
			localised_name = {"item-name.lemon-tart"},
            icon = "__baketorio_plus__/graphics/lemon-tart.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=6,
            name = "lemon-tart-cooked",
			localised_name = {"item-name.lemon-tart-cooked"},
            icon = "__baketorio_plus__/graphics/lemon-tart-cooked.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
        {
            type = "item",
            name = "lemon-meringue-pie",
			localised_name = {"item-name.lemon-meringue-pie"},
            icon = "__baketorio_plus__/graphics/lemon-meringue-pie.png",
            icon_size = 32,
            subgroup = "ingredient",
            stack_size = 100,
        },
        {
            type = "capsule",
            capsule_action=baketorio.capsule_action(0),
            tastiness=7,
            name = "lemon-meringue-pie-cooked",
			localised_name = {"item-name.lemon-meringue-pie-cooked"},
            icon = "__baketorio_plus__/graphics/lemon-meringue-pie-cooked.png",
            icon_size = 32,
            subgroup = "fruit",
            stack_size = 100,
        },
		
		
		
		
  {
    type = "tool",
    name = "fruit-baking-science-pack",
    localised_description = {"item-name.fruit-baking-science-pack"},
    icon = "__baketorio_plus__/graphics/fruit-baking-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    color_hint = { text = "G" },
    order = "i",
    stack_size = 200,
    default_import_location = "nauvis",
    weight = 1*kg,
    durability = 1,
  },
  {
    type = "tool",
    name = "meat-baking-science-pack",
    localised_description = {"item-name.meat-baking-science-pack"},
    icon = "__baketorio_plus__/graphics/meat-baking-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    color_hint = { text = "G" },
    order = "i",
    stack_size = 200,
    default_import_location = "nauvis",
    weight = 1*kg,
    durability = 1,
  },
		
		
		
		
		--  bones! Almost forgot
        {
            type = "item",
            name = "chitinous-shell-fragment",
			localised_name = {"item-name.chitinous-shell-fragment"},
            icon = "__baketorio_plus__/graphics/chitinous-shell-fragment.png",
            icon_size = 32,
			pictures = {
				--  {size = 64, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment.png", scale = 0.5},
				{size = 32, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment.png", scale = 1},
				{size = 32, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment-2.png", scale = 1},
				{size = 32, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment-3.png", scale = 1},
				{size = 32, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment-4.png", scale = 1},
				{size = 32, filename = "__baketorio_plus__/graphics/chitinous-shell-fragment-5.png", scale = 1},
			},
            subgroup = "enemies",
            stack_size = 100
        }
	}
)


data.raw["item"]["chicken"].localised_name = {"item-name.hen"}


--  add new science packs to lab
table.insert(data.raw["lab"]["lab"].inputs, "fruit-baking-science-pack")
table.insert(data.raw["lab"]["lab"].inputs, "meat-baking-science-pack")


--  nevermind, fixed in update of base mod
--[[
--  add icons to these two for the icon combiner for the nutrient recipe
data.raw["capsule"]["salted-hardtack"].icon = {"__baketorio_plus__/graphics/salted-hardtack.png", icon_size=32}
data.raw["capsule"]["brownies-with-ice-cream"].icon = {"__baketorio_plus__/graphics/brownies-with-ice-cream.png", icon_size=32}
]]

--mod enemies to drop citinous shells
--[[
data.raw["unit"]["small-biter"].dying_trigger_effect = {
        {
          type = "create-entity",
          check_buildability = true,
          entity_name = prefix .. "stomper-shell",
          offsets = {{0, -0.94}}
        }
	}
]]
data.raw["unit"]["small-biter"].loot = {
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.9
  }
}

data.raw["unit"]["medium-biter"].loot = {
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.8
  }
}

data.raw["unit"]["big-biter"].loot = {
  {
    count_max = 2,
    count_min = 2,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.7
  }
}

data.raw["unit"]["behemoth-biter"].loot = {
  {
    count_max = 3,
    count_min = 3,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.6
  }
}


data.raw["unit"]["small-spitter"].loot = {
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.9
  }
}

data.raw["unit"]["medium-spitter"].loot = {
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.8
  }
}

data.raw["unit"]["big-spitter"].loot = {
  {
    count_max = 2,
    count_min = 2,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.7
  }
}

data.raw["unit"]["behemoth-spitter"].loot = {
  {
    count_max = 3,
    count_min = 3,
    item = "chitinous-shell-fragment"
  },
  {
    count_max = 1,
    count_min = 1,
    item = "chitinous-shell-fragment",
    probability = 0.6
  }
}

		
		
		
		
		
		
		
		
		
		
		
