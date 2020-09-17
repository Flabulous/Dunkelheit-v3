require "math"
require "items"
require "main"
math.randomseed( os.time() )

entity = {}

entity["TYP"] = "nil"

entity["LVL"] = 0
entity["CST"] = 0
entity["MRL"] = 0

entity["DIS"] = "nil"
entity["CLS"] = "nil"
entity["ABL"] = "nil" -- entity-specific exploit

entity["VIT"] = 0
entity["STM"] = 0
entity["CHG"] = 0

entity["ATK"] = 0
entity["DEF"] = 0
entity["SPC"] = 0

entity["DEX"] = 0
entity["MGT"] = 0
entity["WIS"] = 0

entity["EQW"] = item -- Equipped weapon
entity["EQA"] = item -- Equipped armor
entity["EQI"] = item -- Equipped item

entity["INV"] = {} --Inventory
entity["CRW"] = 0 --Current weight
entity["MXW"] = 0 --Maximum weight

function makeHunter(r)
	r = entity

	r["TYP"] = "Hunter"

	r["LVL"] = math.random(1,18)
	r["MRL"] = math.random(-0.99,0.99)

	r["VIT"] = r["LVL"] * math.random(1,3)
	r["STM"] = r["LVL"] * math.random(1,3)
	r["CHG"] = r["LVL"] * math.random(1,3)

	x = math.random(1,3)
	if x == 1 then
		r["DIS"] = "Lithe"
		r["ATK"] = math.random(3,9)
		r["DEF"] = math.random(3,9)
		r["SPC"] = math.random(6,9)

		r["MXW"] = math.random(6,24)

		r["EQW"] = makeMunition(9)
		r["EQA"] = makeArmour(9)
    end

	if x == 2 then
		r["DIS"] = "Soldier"
		r["ATK"] = math.random(6,9)
		r["DEF"] = math.random(3,6)
		r["SPC"] = math.random(3,9)

		r["MXW"] = math.random(6,36)

		r["EQW"] = makeMunition(12)
		r["EQA"] = makeArmour(12)
    end

	if x == 3 then
		r["DIS"] = "Altered"
		r["ATK"] = math.random(3,9)
		r["DEF"] = math.random(6,9)
		r["SPC"] = math.random(3,9)

		r["MXW"] = math.random(6,48)

		r["EQW"] = makeMunition(18)
		r["EQA"] = makeArmour(18)
	end

	x = math.random(3)

	if x == 1 then
		r["CLS"] = "Support"
		r["DEX"] = math.random(3,9)
		r["MGT"] = math.random(3,9)
		r["WIS"] = math.random(6,12)
    end

	if x == 2 then
		r["CLS"] = "Ordnance"
		r["DEX"] = math.random(6,12)
		r["MGT"] = math.random(3,9)
		r["WIS"] = math.random(3,9)
    end

	if x == 3 then
		r["CLS"] = "Tank"
		r["DEX"] = math.random(3,9)
		r["MGT"] = math.random(6,12)
		r["WIS"] = math.random(3,9)
    end

	return r
end

function showEntity(r)
	print(" ")
	print("# #")
	print("DIST: ", r["DIS"])
	print("CLASS: ", r["CLS"])
	print(" ")
	print("LVL: ", r["LVL"])
	print("MRL: ", r["MRL"])
	print(" ")
	print("STATS")
	print("VIT: ", r["VIT"])
	print("STM: ", r["STM"])
	print("CHG: ", r["CHG"])
	print(" ")
	print("DICE")
	print("ATK: ", r["ATK"])
	print("DEF: ", r["DEF"])
	print("SPC: ", r["SPC"])
	print(" ")
	print("TRAITS")
	print("DEX: ", r["DEX"])
	print("MGT: ", r["MGT"])
	print("WIS: ", r["WIS"])
	print(" ")
	print("Weapon:")
	print("DMG: ", r["EQW"]["DMG"])
	print("AMO: ", r["EQW"]["AMO"])
	print("WGT: ", r["EQW"]["WGT"])
	print("# #")
	print(" ")
end
