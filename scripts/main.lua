wll_spr = 0
flr_spr = 0
dor_spr = 0
htr_spr = 0
eny_spr = 0
cst_spr = 0
str_spr = 0

function love.load
	flr_spr = love.graphics.newImage("../sprites/")
	dor_spr = love.graphics.newImage("../sprites/")
	htr_spr = love.graphics.newImage("../sprites/")
	eny_spr = love.graphics.newImage("../sprites/")
	cst_spr = love.graphics.newImage("../sprites/")
	str_spr = love.graphics.newImage("../sprites/")
end

function love.draw()
	love.graphics.print("Hello World!", 400, 300)
end

