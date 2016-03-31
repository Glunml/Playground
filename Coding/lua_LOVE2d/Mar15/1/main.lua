--problems

----Can't change the background by using Array
------Solved: I didn't code that back to 0 if backgroundChange became bigger than 3
------new problem: Background changing too fast(it seems like a same problem that the character walking too fast)

----Character walk too fast

----Character should never go outside of the screen
------Solved: I needed to make if inside of if




function love.load()
	map = {	
			[0] = love.graphics.newImage("assets/backgrounds/map1.png"),
			[1] = love.graphics.newImage("assets/backgrounds/map2.png"),
			[2] = love.graphics.newImage("assets/backgrounds/map3.png"),
		}
		
	character = {}
			character.up0 = love.graphics.newImage("assets/sprite/up0.png")
			character.up1 = love.graphics.newImage("assets/sprite/up1.png")
			character.up2 = love.graphics.newImage("assets/sprite/up2.png")
		
			character.right0 = love.graphics.newImage("assets/sprite/right0.png")
			character.right1 = love.graphics.newImage("assets/sprite/right1.png")
			character.right2 = love.graphics.newImage("assets/sprite/right2.png")

			character.down0 = love.graphics.newImage("assets/sprite/down0.png")
			character.down1 = love.graphics.newImage("assets/sprite/down1.png")
			character.down2 = love.graphics.newImage("assets/sprite/down2.png")

			character.left0 = love.graphics.newImage("assets/sprite/left0.png")
			character.left1 = love.graphics.newImage("assets/sprite/left1.png")
			character.left2 = love.graphics.newImage("assets/sprite/left2.png")
			
	pos = {x = 0,y = 0}
	lastMove = character.right0
	backgroundChange = 1
	noImage = false
end

function love.draw()
	love.graphics.setBackgroundColor(0,255,255)
	if noImage == false then
		love.graphics.draw(map[backgroundChange])
	end
	walk()
	love.graphics.draw(lastMove,pos.x,pos.y)
end

function love.keyreleased(key)
	if key == "n" then
		backgroundChange = backgroundChange + 1
		if backgroundChange > 2 then
			backgroundChange = 0
		end
	end
	if key == "a" then
		noImage = false
	end	
end

function love.keypressed()

	if love.keyboard.isDown("a") then
		noImage = true
	end
	
end

--[[
function walk(direction,posXY,minMaxPos,increment,lastMoveImage)
	if love.keyboard.isDown( then
		if posXY >= 0 and posXY <= 250 then
			if posXY > minMaxPos then
				posXY = posXY + 0
			else
				posXY=posXY+increment
			end
		end
		love.graphics.draw(lastMoveImage,posXY)
	end
end
--]]



function walk()
	if love.keyboard.isDown("right") then
		if pos.x >= 0 and pos.x <= 250 then
			if pos.x > 225 then
				pos.x = pos.x + 0
			else
				pos.x=pos.x+12.5
			end
		end
		lastMove = character.right0
		love.graphics.draw(lastMove,pos.x,pos.y)

	
	elseif love.keyboard.isDown("left") then
		
		if pos.x >= 0 and pos.x <= 250 then
			if pos.x < 1 then
				pos.x = pos.x + 0
			else
				pos.x=pos.x-12.5
			end
		end
		
		lastMove = character.left0
		love.graphics.draw(lastMove,pos.x,pos.y)
	
	
	elseif love.keyboard.isDown("up") then
		if pos.y >= 0 and pos.y <= 250 then
			if pos.y < 12.5 then
				pos.y = pos.y + 0
			else
				pos.y=pos.y-12.5
			end
		end
		lastMove = character.up0
		love.graphics.draw(lastMove,pos.x,pos.y)
	
	
	elseif love.keyboard.isDown("down") then
		if pos.y >= 0 and pos.y <= 250 then
			if pos.y > 212.5 then
				pos.y = pos.y + 0
			else
				pos.y=pos.y+12.5
			end
		end
		lastMove = character.down0
		love.graphics.draw(lastMove,pos.x,pos.y)
	end
end
	