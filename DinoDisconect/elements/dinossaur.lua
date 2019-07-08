
function love.keypressed(key)
    if key == "up" then
        if music == true then
            love.audio.play(love.audio.newSource( "music/jumpDinossaur.wav", "static" ))
        end
        if dinossaur.speedUp == 0 then
            dinossaur.speedUp = alturaPulo
        end
    
    end

end

function dinossaurLoad()
    
    imgDinossaur = love.graphics.newImage("images/dinossaur.png")
    imgDinossaurDead = love.graphics.newImage("images/dinossaurDead.png")

    dinossaur= {
        posx = 400,
        posy = 600,
        speed = 500,
        altura = imgDinossaur:getHeight(),
        largura = imgDinossaur:getWidth(),
        speedUp = 0,
        vida = "vivo",
    }
    alturaPulo = 40

end

function dinossaurUpdate(dt)

    -- para salto
    if dinossaur.speedUp ~= 0 then
        dinossaur.posy = dinossaur.posy - dinossaur.speedUp
        dinossaur.speedUp = dinossaur.speedUp - gravidade*dt
            if dinossaur.posy > 600 then
                dinossaur.speedUp = 0
                dinossaur.posy = 600
            end
    end

    -- Movimentos de esquerda e direita
    if love.keyboard.isDown( "right" ) then
        if dinossaur.posx < larguraTela then
            dinossaur.posx = dinossaur.posx + dinossaur.speed*dt
        end
    end
    if love.keyboard.isDown( "left" ) then
        if dinossaur.posx > 10 then
            dinossaur.posx = dinossaur.posx - dinossaur.speed*dt
        end
    end
end

function dinossaurDraw()
    love.graphics.draw(imgDinossaur, dinossaur.posx, dinossaur.posy,0,1,1, imgDinossaur:getWidth()/2, imgDinossaur:getHeight()/2)
end
