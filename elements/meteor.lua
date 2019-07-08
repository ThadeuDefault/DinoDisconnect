
function meteorLoad()
    delayMeteor = 2
    tempoCriarMeteor = delayMeteor
    meteors = {}
    imgMeteor = love.graphics.newImage("images/meteor.png")
	imgMeteorSubindo = love.graphics.newImage("images/meteor.png")
    speedMeteorX = 100
    speedMeteorY = 200
    
end

function meteorUpdate(dt)

    tempoCriarMeteor = tempoCriarMeteor - ( 1 * dt )

	if tempoCriarMeteor < 0 then
		tempoCriarMeteor = delayMeteor
		local numeroAleatorio = math.random( 300, love.graphics.getWidth() - ( ( imgMeteor:getWidth() / 2 ) + 10 ) )
		novoMeteor = { posx = numeroAleatorio, posy = -imgMeteor:getWidth(), img = imgMeteor, colidiu = false }
		table.insert( meteors, novoMeteor )
	end
	
	for i, meteor in ipairs( meteors ) do

		if meteor.colidiu == false then
			meteor.posy = meteor.posy + ( speedMeteorY* dt )
			meteor.posx = meteor.posx - ( speedMeteorX* dt )

		elseif meteor.colidiu == true then
			meteor.posy = meteor.posy - ( speedMeteorY* dt )
			meteor.posx = meteor.posx - ( speedMeteorX* dt )
			meteor.img = love.graphics.newImage("images/meteorColidiu.png")
		end

		if meteor.posy > 550 then
			musicDeath = love.audio.newSource( "music/deathSound.mp3", "static" )
			musicDeath:play()
			gamestate = "gameover"
		end

		if meteor.posy < -100 then
			table.remove(meteors, i)
		end
	end


end

function meteorDraw()
	for i, meteor in ipairs( meteors ) do
		love.graphics.setColor(corElement)
        love.graphics.draw( meteor.img, meteor.posx, meteor.posy )
    end
end