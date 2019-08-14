
posnamex = 500
posnamey = 300

posButtonx = 480
posButtony = 400

alturaButton = 60
larguraButton = 250

function menuLoad()
        menuIcon = love.graphics.newImage("images/menuicon.png")
        --love.audio.play(love.audio.newSource( "music/musicGame.mp3", "static" ))
        
end

function menuUpdate(dt)


end

function menuDraw()
    love.graphics.setBackgroundColor(corFundo)
    
    love.graphics.setColor(corElement)
    love.graphics.draw(menuIcon, 635, 180,0,1,1,menuIcon:getWidth()/2, menuIcon:getWidth()/2)

    love.graphics.setFont(love.graphics.newFont(font, 50))
    love.graphics.setColor(corElement) 
    love.graphics.print("DINO", posnamex+90, posnamey)

    love.graphics.setFont(love.graphics.newFont(font, 12))
    love.graphics.setColor(corElement) 
    love.graphics.print("D I S C O N E C T", posnamex +85, posnamey + 50)

    
    love.graphics.setColor(corElement)
    love.graphics.rectangle("line" ,posButtonx,posButtony,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(corElement) 
    love.graphics.print("START", posButtonx + 80, posButtony + 20)
    
    buttonStart = love.mouse.getX() > 480 and love.mouse.getY() > 400 and love.mouse.getX() < 730 and love.mouse.getY() < 460
    if love.mouse.isDown(1) and buttonStart  then
        love.audio.play(love.audio.newSource( "music/buttonClick.wav", "static" ))
        gamestate = "play"
    end

    love.graphics.setColor(corElement)
    love.graphics.rectangle("line" ,posButtonx,posButtony + 70,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
     love.graphics.setColor(corElement)
    love.graphics.print("CONFIG", posButtonx + 70, posButtony + 90)

    buttonConfig = love.mouse.getX() > 480 and love.mouse.getY() > 470 and love.mouse.getX() < 730 and love.mouse.getY() < 530
    if love.mouse.isDown(1) and buttonConfig then
        gamestate = "config"
    end

    love.graphics.setColor(corElement)
    love.graphics.rectangle("line" ,posButtonx,posButtony + 140,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(corElement) 
    love.graphics.print("EXIT", posButtonx + 87, posButtony + 160)

    buttonExit = love.mouse.getX() > 480 and love.mouse.getY() > 540 and love.mouse.getX() < 730 and love.mouse.getY() < 600
    if love.mouse.isDown(1) and buttonExit  then
        love.audio.play(love.audio.newSource( "music/buttonClick.wav", "static" ))
        love.event.quit()
    end

    if love.keyboard.isDown( "r" ) then 
        love.graphics.print("X "..love.mouse.getX().." Y ".. love.mouse.getY(), 10, 10)
    end

end
