timeEnd = 30

function theendLoad()  

    imgMeteorosao = love.graphics.newImage("images/meteorMAX.png")
    meteorMAX = {
        posx =  1300,
        posy = 0,
        velocidadex = 19,
        velocidadey = 11
    }
end

function theendUpdate(dt)
    

    timeEnd = timeEnd + 1*dt

    meteorMAX.posx = meteorMAX.posx - (meteorMAX.velocidadex*dt)
    meteorMAX.posy = meteorMAX.posy + (meteorMAX.velocidadey*dt)

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
        dinossaur.posx = dinossaur.posx + dinossaur.speed*dt
    end
    if love.keyboard.isDown( "left" ) then
        dinossaur.posx = dinossaur.posx - dinossaur.speed*dt
    end
    

end

function theendDraw()

    if math.floor(timeEnd) > 41 then
        gamestate = "gameover"
        
    end

    love.graphics.setFont(love.graphics.newFont(font, 40))
    love.graphics.setColor(math.random(),math.random(),math.random()) 
    love.graphics.print("VOCÊ VENCEU...", 350, 100)

    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(math.random(),math.random(), math.random()) 
    love.graphics.print("MAS EU SOU, INEVITÁVEL...", 360, 170)


    for i, cacto in ipairs( cactos ) do
        table.remove(cacto, i)
    end
    
    for i, meteor in ipairs( meteors ) do
        table.remove(meteor, i)
    end


    if musicEnd == true and music == true then
        musica = love.audio.newSource("music/musicTheend.mp3", "static" )
        musica:play()
        musicEnd = false
    end

    for i, nuvem in ipairs( nuvens ) do
        love.graphics.setColor(math.random(),math.random(), math.random()) 
        love.graphics.draw( nuvem.img, nuvem.posx, nuvem.posy )
    end
    love.graphics.setColor(math.random(), math.random(), math.random(), 1)
    love.graphics.draw(imgDinossaurDead, dinossaur.posx, dinossaur.posy +39,0,1,1, imgDinossaur:getWidth()/2, imgDinossaur:getHeight()/2)

    love.graphics.setColor(math.random(), math.random(), math.random(), 1)
    love.graphics.rectangle("line", 0, 650, larguraTela, 500)

    love.graphics.draw(imgMeteorosao, meteorMAX.posx, meteorMAX.posy,0,1,1,imgMeteorosao:getWidth()/2, imgMeteorosao:getWidth()/2)

end