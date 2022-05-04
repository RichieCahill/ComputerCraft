print("spawner controller is runing")

-- the sod wher the buneled cable is
BundledSide = "left"

-- The storage draw controler
storage = peripheral.wrap("right")

-- this is 1000 less than a storage drawer capasty with max emerald upgrades for and 64 item stack size
MAX64 = 450000

-- takes the slot in the storage draw system and compares the curent itme cout to desierd and turn the spawener on or off
function spawner(slot,desiered,color)
	if storage.getItemDetail(slot).count >= desiered then
		redstone.setBundledOutput(BundledSide, colors.combine(redstone.getBundledOutput(BundledSide),color))
	else
		redstone.setBundledOutput(BundledSide, colors.subtract(redstone.getBundledOutput(BundledSide),color))
	end
end

function spawner2(slot,slot1,desiered,color)
	if storage.getItemDetail(slot).count >= desiered or storage.getItemDetail(slot1).count >= desiered then
		redstone.setBundledOutput(BundledSide, colors.combine(redstone.getBundledOutput(BundledSide),color))
	else
		redstone.setBundledOutput(BundledSide, colors.subtract(redstone.getBundledOutput(BundledSide),color))
	end
end

while true do
	spawner(8,MAX64,colors.pink)
	spawner2(2,3,MAX64,colors.white)
	spawner2(5,9,MAX64,colors.brown)
	spawner2(11,14,MAX64,colors.red)
	spawner2(12,15,MAX64,colors.yellow)
	sleep(60)
end
