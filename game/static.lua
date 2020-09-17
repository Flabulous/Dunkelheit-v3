require "main"
static = {}
static["TYP"] = "nil"
static["SPRITE"] = "nil"

function makeStatic()
	r = static
	return r
end

function makeWall()
	r = static
	r["TYP"] = "WLL"
	r["SPRITE"] = wll_spr
	return r
end

function makeFloor()
	r = static
	r["TYP"] = "FLR"
	r["SPRITE"] = flr_spr
	return r
end

function makeDoor()
	r = static
	r["TYP"] = "DOR"
	r["SPRITE"] = wll_dor
	return r
end

function makeChest()
	r = static
	r["TYP"] = "CST"
	r["SPRITE"] = wll_cst
	return r
end

function makeStair()
	r = static
	r["TYP"] = "STR"
	r["SPRITE"] = wll_str
	return r
end
