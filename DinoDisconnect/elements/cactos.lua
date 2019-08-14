
function cactosLoad()
	delayCacto = 3
	tempoCriarCacto = delayCacto
    imgCacto = love.graphics.newImage( "images/cacto.png" )
	cactos = {}

	speedCacto = 200
end

function cactosUpdate(dt)

    tempoCriarCacto = tempoCriarCacto - (1*dt)
	speedCacto = speedCacto + 17*dt
	delayCacto = delayCacto - (0.062*dt)

    --Spawn de cactos
    if tempoCriarCacto < 0 then
		tempoCriarCacto = delayCacto
		novoCacto = { posx = larguraTela, posy = 570, img = imgCacto }
		table.insert( cactos, novoCacto )
	end

    --Movimento e desaparecimento
    for i, cacto in ipairs( cactos ) do
		cacto.posx = cacto.posx - ( speedCacto * dt )
		if cacto.posx < 0 then
			table.remove( cactos, i)
		end
	end

end

function cactosDraw()
    -- Spawn
	for i, cacto in ipairs( cactos ) do
		love.graphics.setColor(corElement)
        love.graphics.draw( cacto.img, cacto.posx, cacto.posy )
    end
end
