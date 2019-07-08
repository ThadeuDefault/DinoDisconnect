
function worldLoad()

    love.graphics.setBackgroundColor(0,0,0)
    gravidade = 100

    speedNuvemX = 200
    imgNuvem = love.graphics.newImage("images/nuvem.png")
    nuvens = {}

end

function worldUpdate(dt)

    -- NUVENS
    criarNuvem = math.random(1, 85)
    posicaoNuvem = math.random(1, 3)


    if criarNuvem == 1 then
        primeiraNuvem = true
        if posicaoNuvem == 1 then
            novaNuvem = { posx = 1300, posy = 200, img = imgNuvem}
        elseif posicaoNuvem == 2 then
            novaNuvem = { posx = 1300, posy = 350, img = imgNuvem}
        elseif posicaoNuvem == 3 then
            novaNuvem = { posx = 1300, posy = 450, img = imgNuvem}
        end

        table.insert( nuvens, novaNuvem )
        
    end

    if primeiraNuvem == true then
        for i, nuvem in ipairs( nuvens ) do

            nuvem.posx = nuvem.posx - ( speedNuvemX*dt )

            if nuvem.posx < -100 then
                table.remove(nuvens, i)
            end
            
        end
    end

end

function worldDraw()
    love.graphics.setColor(corElement)
    love.graphics.rectangle("line", 0, 650, larguraTela, 500)

    for i, nuvem in ipairs( nuvens ) do
        love.graphics.setColor(corElement)
        love.graphics.draw( nuvem.img, nuvem.posx, nuvem.posy )
    end

end