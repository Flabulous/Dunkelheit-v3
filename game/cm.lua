require"math"
require"entity"
require "main"

complex_SIZE = 12
room_SIZE = 7

complex = {}
room    = {}

tile = {}
tile["STC"] = static --Currently held static
tile["ENT"] = entity --Currently held entity

function makeComplex()
	r = complex

	exit_x = math.random(0,complex_size)
	exit_y = math.random(0,complex_size)

	start_x = math.random(0,complex_size)
	start_y = math.random(0,complex_size)

	for x=0,complex_SIZE do
		for y=0,complex_SIZE do
			complex[x][y] = makeRoom()
		end
	end

	complex[start_x][start_y] = makeRoom("ENTER")
	complex[exit_x][exit_y] = makeRoom("EXIT")

	return r
end

function makeRoom(s)
	r = room

	for x=0,room_SIZE do
		for y=0,room_SIZE do
			room[x][y] = makeTile()
		end
	end

	if s == "ENTER" then

	end

	if s == "EXIT" then
		x = math.random(1,room_SIZE)
		y = math.random(1,room_SIZE)
		room[x][y] = makeTile("str")
	end

	return r
end

function makeTile(s)
	r = tile

	if s == "str"
		tile["STC"] = makeStair()
	end

	if s == ""
		tile["STC"] = makeStair()
	end

	if s == "stair"
		tile["STC"] = makeStair()
	end

	if s == "stair"
		tile["STC"] = makeStair()
	end


	return r
end

