math.randomseed(os.time())

require ("elements/world")
require ("elements/dinossaur")
require ("elements/cactos")
require ("elements/meteor")
require ("elements/menu")
require ("elements/points")
require ("elements/gameover")
require ("elements/theend")
require ("elements/colisoes")

larguraTela = 1200
alturaTela = 800
mode = white
color = rgb
gamestate = "menu"
pontos = 0
font = "fonts/8bits.ttf"
music = true


function love.load()
        
        love.window.setMode(larguraTela, alturaTela)

        menuLoad()
        worldLoad()
        dinossaurLoad()
        meteorLoad()
        cactosLoad()
        pointsLoad()
        gameoverLoad()
    --  theendLoad()


end
function love.update(dt)
    
    if gamestate == "menu" then
        menuUpdate(dt)
        if music == true then
            musica = love.audio.newSource("music/musicGame.mp3", "static" )
        	musica:play()
            musica:setLooping( true )
            music = false
        end
    elseif gamestate == "play" then
        love.audio.stop( musica )
        worldUpdate(dt)
        dinossaurUpdate(dt)
        meteorUpdate(dt)
        cactosUpdate(dt)
        pointsUpdate(dt)
        colisoes()
    elseif gamestate == "gameover" then
        gameoverUpdate(dt)
    --elseif gamestate == "theend" then
     --   theendUpdate(dt)
    end


end
function love.draw()
    if gamestate == "menu" then
        menuDraw()
    elseif gamestate == "play" then
        worldDraw()
        dinossaurDraw()
        meteorDraw()
        cactosDraw()
        pointsDraw()
    elseif gamestate == "gameover" then

        speedCacto = 200
        delayCacto = 2
        

        for i, meteor in ipairs( meteors ) do
            table.remove( meteors, i )
        end

        for i, cacto in ipairs( cactos ) do
            table.remove( cactos, i )
        end

        gameoverDraw()
        
   -- elseif gamestate == "theend" then
    --    theendDraw()
    end
end 
