
function checaColisao( x1, y1, w1, h1, x2, y2, w2, h2 )
	return x1 < x2 + w2 and x2 < x1 + w1 and y1 < y2 + h2 and y2 < y1 + h1
end

function colisoes()
	
	for i, meteor in ipairs( meteors ) do
		if meteor.posy < 550 and checaColisao( meteor.posx, meteor.posy, 120, 150, dinossaur.posx, dinossaur.posy, 60, 113 ) then
				meteor.colidiu = true
		end
    end
    
    for i, cacto in ipairs( cactos ) do
		if checaColisao( cacto.posx, cacto.posy, imgCacto:getWidth(), imgCacto:getHeight(), dinossaur.posx, dinossaur.posy, 60, 70 ) then
            gamestate = "gameover"
			musicDeath = love.audio.newSource( "music/deathSound.mp3", "static" )
			musicDeath:play()
		end
	end
	
end