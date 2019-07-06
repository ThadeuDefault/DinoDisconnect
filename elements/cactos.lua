
function cactosLoad()
    delayCacto = 5
    spawnCacto = delayCacto
    imgCacto = love.graphics.newImage("images/cacto.png")
    cactos = {}
    speedCacto = 200
end

function cactosUpdate(dt)

    delayCacto = delayCacto - (1*dt)
    spawnCacto = spawnCacto - (0.05*dt)
    speedCacto = speedCacto + 15*dt

    --Spawn de cactos
    if delayCacto < 0 then
        delayCacto = spawnCacto - (0.03*dt)
        newCacto = {
            posx = math.random(1200, 1400),
            posy = 585,
            img = imgCacto
        }
       
        table.insert(cactos, newCacto)
    end
    
    for i, cacto in ipairs( cactos ) do
        cacto.posx = cacto.posx - (speedCacto*dt)
        if cacto.posx < 0 then
            table.remove(cactos, i)
        end
    end

end

function cactosDraw()
    for i, cacto in ipairs( cactos ) do
        love.graphics.draw(imgCacto, cacto.posx, cacto.posy,0,1,1,imgCacto:getWidth()/2, imgCacto:getWidth()/2)
    end
end