require "math"
math.randomseed( os.time() )

hunter = {}
hunter["LVL"] = 0
hunter["CST"] = 0
hunter["MRL"] = 0

hunter["DIS"] = "nil"
hunter["CLS"] = "nil"
hunter["ABL"] = "nil" -- Hunter-specific exploit

hunter["VIT"] = 0
hunter["STM"] = 0
hunter["CHG"] = 0

hunter["ATK"] = 0
hunter["DEF"] = 0
hunter["SPC"] = 0

hunter["DEX"] = 0
hunter["MGT"] = 0
hunter["WIS"] = 0

hunter["EQW"] = item -- Equipped weapon
hunter["EQA"] = item -- Equipped armor
hunter["EQI"] = item -- Equipped item

hunter["INV"] = {} --Inventory
hunter["CRW"] = 0 --Current weight
hunter["MXW"] = 0 --Maximum weight

function makeHunter(r)
r = hunter
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


    end
if x == 2 then
    r["DIS"] = "Soldier"
    r["ATK"] = math.random(6,9)
    r["DEF"] = math.random(3,6)
    r["SPC"] = math.random(3,9)


    end
if x == 3 then
    r["DIS"] = "Altered"
    r["ATK"] = math.random(3,9)
    r["DEF"] = math.random(6,9)
    r["SPC"] = math.random(3,9)


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

function ShowHunter(r)
	print(" ")
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
end
