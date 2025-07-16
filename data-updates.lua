
--data.raw["entity"]["stone-furnace"].result_inventory_size = 3
--data.raw["entity"]["steel-furnace"].result_inventory_size = 3
--data.raw["entity"]["electric-furnace"].result_inventory_size = 3

for key,value in pairs(data.raw["furnace"]) do
	if value.result_inventory_size < 2 then
		value.result_inventory_size = 2
	end
end


--  Baketorio+, Cakes Exploration




