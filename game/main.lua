--Walls
wlt_spr = 0
wls_spr = 0
wlc_spr = 0

--Floors
flr_spr = 0

--Doors
dor_spr = 0

--Hunters
htr_spr = 0

--Enemies
eny_spr = 0

--Chests
cst_spr = 0

--Stairs
str_spr = 0

twn_ui_spr = 0
cmp_ui_spr = 0
men_ui_spr = 0

squad = {}

function startup()

end

function love.load
	require "cm.lua"
	require "entity.lua"
	require "items.lua"
	require "static.lua"
	require "ui.lua"

	wlt_spr = love.graphics.newImage("sprites/wall_top.png")
	wls_spr = love.graphics.newImage("sprites/wall_side.png")
	wlc_spr = love.graphics.newImage("sprites/wall_corner.png")

	flr_spr = love.graphics.newImage("sprites/floor.png")
	dor_spr = love.graphics.newImage("sprites/")
	htr_spr = love.graphics.newImage("sprites/")
	eny_spr = love.graphics.newImage("sprites/")
	cst_spr = love.graphics.newImage("sprites/")
	str_spr = love.graphics.newImage("sprites/")


end

function love.draw()
	love.graphics.print("Hello World!", 400, 300)
end

function love.update()

end
