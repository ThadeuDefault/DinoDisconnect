



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
        love.graphics.setColor(corElement)
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
    if elementRed == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",350,330,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("VERMELHO", 420, 360 )
        buttonElementRed = love.mouse.getX() > 350 and love.mouse.getY() > 330 and love.mouse.getX() < 600 and love.mouse.getY() < 390

    elseif elementRed == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,350,330,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement)
        love.graphics.print("VERMELHO", 420, 360 )
        buttonElementRed = love.mouse.getX() > 350 and love.mouse.getY() > 330 and love.mouse.getX() < 600 and love.mouse.getY() < 390
        if love.mouse.isDown(1) and buttonElementRed  then

            elementRed = true
            elementBlue = false
            elementGreen = false
            elementPurple = false

            corElement = {1, 0, 0}
        end
    end

    -- Azul
    if elementBlue == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",620,330,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo) 
        love.graphics.print("AZUL", 710, 360 )
        buttonElementBlue = love.mouse.getX() > 620 and love.mouse.getY() > 330 and love.mouse.getX() < 870 and love.mouse.getY() < 390

    elseif elementBlue == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,620,330,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement)
        love.graphics.print("AZUL", 710, 360 )
        buttonElementBlue = love.mouse.getX() > 620 and love.mouse.getY() > 330 and love.mouse.getX() < 870 and love.mouse.getY() < 390
        if love.mouse.isDown(1) and buttonElementBlue  then

            elementRed = false
            elementBlue = true
            elementGreen = false
            elementPurple = false

            corElement = {0, 0, 1}
        end
    end

    -- Verde
    if elementGreen == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",350,440,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo)
        love.graphics.print("VERDE", 420, 460 )
        buttonElementGreen = love.mouse.getX() > 350 and love.mouse.getY() > 440 and love.mouse.getX() < 600 and love.mouse.getY() < 500

    elseif elementGreen == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,350,440,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement)
        love.graphics.print("VERDE", 420, 460 )
        buttonElementGreen = love.mouse.getX() > 350 and love.mouse.getY() > 440 and love.mouse.getX() < 600 and love.mouse.getY() < 500
 
        if love.mouse.isDown(1) and buttonElementGreen  then

            elementRed = false
            elementBlue = false
            elementGreen = true
            elementPurple = false

            corElement = {0, 1, 0}
        end
    end

    -- Roxo
    if elementPurple == true then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("fill",620,440,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corFundo)
        love.graphics.print("ROXO", 710, 460 )
        buttonElementPurple = love.mouse.getX() > 620 and love.mouse.getY() > 440 and love.mouse.getX() < 870 and love.mouse.getY() < 500

    elseif elementPurple == false then
        love.graphics.setColor(corElement)
        love.graphics.rectangle("line" ,620,440,larguraButton,alturaButton)
        love.graphics.setFont(love.graphics.newFont(font, 20))
        love.graphics.setColor(corElement)
        love.graphics.print("ROXO", 710, 460 )
        buttonElementPurple = love.mouse.getX() > 620 and love.mouse.getY() > 440 and love.mouse.getX() < 870 and love.mouse.getY() < 500
 
        if love.mouse.isDown(1) and buttonElementPurple  then

            elementRed = false
            elementBlue = false
            elementGreen = false
            elementPurple = true

            corElement = {1, 0, 1}
        end
    end


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