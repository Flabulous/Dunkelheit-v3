require"math"
math.randomseed( os.time() )
item = {}
item["CST"] = 0
item["WGT"] = 0
item["EPT"] = 0

munition = item
munition["DMG"] = 0
munition["AMO"] = 0
munition["TYP"] = "null"

function makeMunition()
	r = munition

	x = math.random(6,24)
	r["WGT"] = x

	if x > 6 and x < 9 then
		r["DMG"] = math.random(1,3)
		r["AMO"] = math.random(3,6)
	end

	if x > 9 and x < 12 then
		r["DMG"] = math.random(3,6)
		r["AMO"] = math.random(3,9)
	end

	if x > 12 and x < 15 then
		r["DMG"] = math.random(6,9)
		r["AMO"] = math.random(3,12)
	end

	if x > 15 and x < 18 then
		r["DMG"] = math.random(6,9)
		r["AMO"] = math.random(3,18)
	end


	if x > 18 and x < 21 then
		r["DMG"] = math.random(6,12)
		r["AMO"] = math.random(3,24)
	end


	if x > 21 and x < 24 then
		r["DMG"] = math.random(7,18)
		r["AMO"] = math.random(3,30)
	end

	x = math.random(1,3)

	r["CST"] = r["DMG"] * r["AMO"]

	return r
end


armour = item
armour["AMR"] = 0
armour["NTG"] = 0
armour["TYP"] = "null"

function makeArmour()
	r = armour

	x = math.random(6,24)
	r["WGT"] = x

	if x > 6 and x < 9 then
		r["AMR"] = math.random(1,3)
		r["NTG"] = math.random(3,6)
	end

	if x > 9 and x < 12 then
		r["AMR"] = math.random(3,6)
		r["NTG"] = math.random(3,9)
	end

	if x > 12 and x < 15 then
		r["AMR"] = math.random(6,9)
		r["NTG"] = math.random(3,12)
	end

	if x > 15 and x < 18 then
		r["AMR"] = math.random(6,9)
		r["NTG"] = math.random(3,18)
	end


	if x > 18 and x < 21 then
		r["AMR"] = math.random(6,12)
		r["NGT"] = math.random(3,24)
	end


	if x > 21 and x < 24 then
		r["AMR"] = math.random(7,18)
		r["NGT"] = math.random(3,30)
	end

	r["CST"] = r["AMR"] * r["NTG"]

	return r
end
