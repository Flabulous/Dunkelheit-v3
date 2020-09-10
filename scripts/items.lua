require"math"
require "main"
math.randomseed( os.time() )

item = {}
item["CST"] = 0
item["WGT"] = 0
item["TYP"] = "null"

munition = item
munition["DMG"] = 0
munition["AMO"] = 0
munition["EPT"] = "null"

armour = item
armour["AMR"] = 0
armour["NTG"] = 0
armour["EPT"] = "null"

function makeMunition(mx)
	r = munition

	x = math.random(6,mx)

	r["WGT"] = x
	r["DMG"] = x * math.random(1,3)
	r["AMO"] = x * math.random(1,3)

	r["CST"] = r["DMG"] * r["AMO"]

	return r
end

function makeArmour(mx)
	r = armour

	x = math.random(6,mx)

	r["WGT"] = x
	r["AMR"] = x * math.random(3)
	r["NTG"] = x * math.random(3)

	r["CST"] = r["AMR"] * r["NTG"]

	return r
end
