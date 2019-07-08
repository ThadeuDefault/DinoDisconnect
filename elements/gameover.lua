
posnamex = 420
posnamey = 300

posButtonx = 480
posButtony = 400

alturaButton = 60
larguraButton = 250

function gameoverLoad()
    imgGameover = love.graphics.newImage("images/menuiconGameOver.png")
end

function gameoverUpdate(dt)
end

function gameoverDraw()
    love.graphics.setBackgroundColor(255,255,255)

    love.graphics.setColor(0,0,0)
    love.graphics.draw(imgGameover, posnamex + 185, 100,0,1,1,imgGameover:getWidth()/2, imgGameover:getWidth()/2)

    love.graphics.setFont(love.graphics.newFont(font, 50))
    love.graphics.setColor(0,0,0) 
    love.graphics.print("GAMEOVER", posnamex, posnamey)

    love.graphics.setFont(love.graphics.newFont(font, 12))
    love.graphics.setColor(0,0,0) 
    love.graphics.print("DINO DISCONECT", posnamex + 100, posnamey + 55)

    
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("line" ,posButtonx,posButtony,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(0,0,0)
    love.graphics.print("RESTART", posButtonx + 60, posButtony + 20)
    
    buttonStart = love.mouse.getX() > 480 and love.mouse.getY() > 400 and love.mouse.getX() < 730 and love.mouse.getY() < 460
    if love.mouse.isDown(1) and buttonStart  then
        gamestate = "play"
        pontos = 0
        delayCacto = 5
        spawnCacto = delayCacto
        speedCacto = 200
    end

    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("line" ,posButtonx,posButtony,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(0,0,0)
    love.graphics.print("RESTART", posButtonx + 60, posButtony + 20)
    
    buttonExit= love.mouse.getX() > 480 and love.mouse.getY() > 400 and love.mouse.getX() < 730 and love.mouse.getY() < 460
    if love.mouse.isDown(1) and buttonStart  then
        gamestate = "play"
        pontos = 0
        delayCacto = 5
        spawnCacto = delayCacto
        speedCacto = 200
    end

    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("line" ,posButtonx,posButtony + 70,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(0,0,0) 
    love.graphics.print("MENU", posButtonx + 80, posButtony + 90)

    buttonMenu = love.mouse.getX() > 480 and love.mouse.getY() > 470 and love.mouse.getX() < 730 and love.mouse.getY() < 530
    if love.mouse.isDown(1) and buttonMenu  then
        gamestate = "menu"
    end

    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("line" ,posButtonx,posButtony + 140,larguraButton,alturaButton)
    love.graphics.setFont(love.graphics.newFont(font, 20))
    love.graphics.setColor(0,0,0) 
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