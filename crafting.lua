inv = peripheral.find("minecraft:hopper")
 
while true do
	test = 0
	for i = 1, inv.size(), 1 do
		test = test + inv.getItemDetail(i).count
	end
	if test >= 1 then
		redstone.setOutput("back",false)
	else
		redstone.setOutput("back",true)
	end
	sleep(30)
end