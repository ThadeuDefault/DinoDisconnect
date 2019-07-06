math.randomseed(os.time())

require ("elements/world")
require ("elements/dinossaur")
require ("elements/cactos")
require ("elements/meteor")
require ("elements/menu")
require ("elements/points")
require ("elements/gameover")

larguraTela = 1200
alturaTela = 800
mode = white
color = rgb
gamestate = "menu"
pontos = 0
font = "fonts/8bits.ttf"


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
    elseif gamestate == "play" then
        worldUpdate(dt)
        dinossaurUpdate(dt)
        meteorUpdate(dt)
        cactosUpdate(dt)
        pointsUpdate(dt)
    elseif gamestate == "gameover" then
        gameoverUpdate(dt)
 --   elseif pontos == 100 then
--        theendDraw()
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
        gameoverDraw()
 --   elseif pontos == 100 then
 --       theendDraw()
    end
end 
