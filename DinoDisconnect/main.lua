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
require ("elements/configs")

larguraTela = 1200
alturaTela = 800

font = "fonts/8bits.ttf"

-- Colors
corFundo = {1, 1, 1}
corElement = {0 , 0, 0}

modeWhite = true
modeNight = false

elementWhite = true
elementRed = false
elementGreen = false
elementBlue = false
elementPurple = false

elementEspecial = false


-- Status do jogo
gamestate = "menu"

-- Points
pontos = 0
pontosTheend = 100

-- Config Music
music = true
musicMenu = true
musicEnd = true



function love.load()
        
        -- Load all
        love.window.setMode(larguraTela, alturaTela)
        theendLoad()
        menuLoad()
        worldLoad()
        dinossaurLoad()
        meteorLoad()
        cactosLoad()
        pointsLoad()
        gameoverLoad()
        configLoad()


end
function love.update(dt)

    if love.keyboard.isDown( "n" ) then 
        corElement = {math.random(),math.random(),math.random()}
    end
    
    -- Menu
    if gamestate == "menu" then
        menuUpdate(dt)
        if music == true and musicMenu == true then
            musica = love.audio.newSource("music/musicGame.mp3", "static" )
        	musica:play()
            musica:setLooping( true )
            musicMenu = false
        end

    -- Start
    elseif gamestate == "play" then
        if music == true then
            love.audio.stop( musica )
        end    
        worldUpdate(dt)
        dinossaurUpdate(dt)
        meteorUpdate(dt)
        cactosUpdate(dt)
        pointsUpdate(dt)
        colisoes()

    -- Game over
    elseif gamestate == "gameover" then
        gameoverUpdate(dt)

    -- The big end
    elseif gamestate == "theend" then
       theendUpdate(dt)

    -- Config
    elseif gamestate == "config" then
        configUpdate(dt)
    end

    --Pontos para o final
    if pontos > pontosTheend then
        gamestate = "theend"
    end
end
function love.draw()
    -- Menu
    if gamestate == "menu" then
        menuDraw()

    -- Start
    elseif gamestate == "play" then
        worldDraw()
        dinossaurDraw()
        meteorDraw()
        cactosDraw()
        pointsDraw()
        musicEnd = true
        musicMenu = true

    -- Gameover
    elseif gamestate == "gameover" then

        speedCacto = 200
        delayCacto = 2


        for i, meteor in ipairs( meteors ) do
            table.remove( meteors, i )
        end

        for i, cacto in ipairs( cactos ) do
            table.remove( cactos, i )
        end

        for i, nuvem in ipairs( nuvens ) do
            table.remove( nuvem, i)
        end

        gameoverDraw()
    
    -- The big end
    elseif gamestate == "theend" then
        theendDraw()

    -- Configs
    elseif gamestate == "config" then
        configDraw()
    end
end 
