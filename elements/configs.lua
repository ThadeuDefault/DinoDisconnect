



function configLoad()

end

function configUpdate(dt)

end

function configDraw()
    
    love.graphics.setBackgroundColor(corFundo)

    love.graphics.setFont(love.graphics.newFont(font, 50))
    love.graphics.setColor(corElement) 
    love.graphics.print("CONFIGS", 430, 40)


    if love.keyboard.isDown( "r" ) then 
        love.graphics.print("X "..love.mouse.getX().." Y ".. love.mouse.getY(), 10, 10)
    end

    love.graphics.setFont(love.graphics.newFont(font, 15))
    love.graphics.setColor(corElement) 
    love.graphics.print("MUSIC IS", 200, 140)

    --Music ON
    if music == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",350,120,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("ON", 450, 143)
        buttonMusicOn = love.mouse.getX() > 350 and love.mouse.getY() > 120 and love.mouse.getX() < 600 and love.mouse.getY() < 180

    elseif music == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,350,120,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement) 
        love.graphics.print("ON", 450, 143 )
        buttonMusicOn = love.mouse.getX() > 350 and love.mouse.getY() > 120 and love.mouse.getX() < 600 and love.mouse.getY() < 180
        if love.mouse.isDown(1) and buttonMusicOn  then
            music = true
        end
    end

    --Music Off
    if music == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",620,120,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("OFF", 710, 143)
        buttonMusicOff = love.mouse.getX() > 620 and love.mouse.getY() > 120 and love.mouse.getX() < 870 and love.mouse.getY() < 180
        if love.mouse.isDown(1) and buttonMusicOff  then
            music = false
        end
    elseif music == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,620,120,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement) 
        love.graphics.print("OFF", 710, 143 )
        buttonMusicOff = love.mouse.getX() > 620 and love.mouse.getY() > 120 and love.mouse.getX() < 870 and love.mouse.getY() < 180
        if love.mouse.isDown(1) and buttonMusicOff  then
            music = false
            love.audio.stop( musica )
        end
        
    end

    love.graphics.setFont(love.graphics.newFont(font, 15))
    love.graphics.setColor(corElement) 
    love.graphics.print("MODE IS", 200, 250)
    
    -- WHITE
    if modeWhite == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",350,230,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("WHITE", 440, 250)
        buttonModeWhite = love.mouse.getX() > 350 and love.mouse.getY() > 230 and love.mouse.getX() < 600 and love.mouse.getY() < 290

    elseif modeWhite == false then
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line" ,350,230,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("WHITE", 440, 250 )
        buttonModeWhite = love.mouse.getX() > 350 and love.mouse.getY() > 230 and love.mouse.getX() < 600 and love.mouse.getY() < 290
        if love.mouse.isDown(1) and buttonModeWhite  then
            modeWhite = true
            modeNight = false
            corFundo = {1, 1, 1}
            corElement = {0,0,0}
        end
    end

    if modeNight == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",620,230,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("NIGHT", 710, 250 )
        buttonModeNight = love.mouse.getX() > 620 and love.mouse.getY() > 230 and love.mouse.getX() < 870 and love.mouse.getY() < 290

    elseif modeNight == false then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("line" ,620,230,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement)
        love.graphics.print("NIGHT", 710, 250 )
        buttonModeNight = love.mouse.getX() > 620 and love.mouse.getY() > 230 and love.mouse.getX() < 870 and love.mouse.getY() < 290
        if love.mouse.isDown(1) and buttonModeNight  then
            modeNight = true
            modeWhite = false
            corFundo = {0, 0, 0}
            corElement = {1 , 1, 1}
        end
    end


    love.graphics.setFont(love.graphics.newFont(font, 15))
    love.graphics.setColor(corElement) 
    love.graphics.print("COLOR IS", 200, 350)


    -- Vermelho
 --[[   if elementsRed == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill" ,posButtonx,posButtony + 140,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("EXIT", posButtonx + 87, posButtony -160 )
        buttonRed = love.mouse.getX() > 480 and love.mouse.getY() > 540 and love.mouse.getX() < 730 and love.mouse.getY() < 600
        if love.mouse.isDown(1) and buttonRed  then
            corElement = {1, 0, 0}
        end
    elseif elementsRed == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,posButtonx,posButtony + 140,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement) 
        love.graphics.print("EXIT", posButtonx + 87, posButtony -160 )
        buttonExit = love.mouse.getX() > 480 and love.mouse.getY() > 540 and love.mouse.getX() < 730 and love.mouse.getY() < 600
        if love.mouse.isDown(1) and buttonExit  then
            
        end
    end
    --]]

    -- Azul

    -- Verde

    -- Amarelo

    -- Roxo

    -- Especial

    -- Voltar menu
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,posButtonx,posButtony + 180,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement) 
        love.graphics.print("RETURN MENU", 500, posButtony + 200 )
        buttonReturnMenu = love.mouse.getX() > 480 and love.mouse.getY() > 580 and love.mouse.getX() < 730 and love.mouse.getY() < 640
        if love.mouse.isDown(1) and buttonReturnMenu  then
            gamestate = "menu"
        end
end