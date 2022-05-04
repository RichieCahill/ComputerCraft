while true do
	sleep(30)
	while redstone.getInput("bottom") do
		if turtle.compare() == true then
			turtle.dig()
		end
	end
end
