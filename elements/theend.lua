
--[[require ("elements/world")
require ("elements/cacto")
remove ("elements/meteor")


function theendLoad()  

    imgMeteorosao = love.graphics.newImage("images/meteorMAX.png")
    meteorMAX = {
        posx = 1200,
        posy = 400
    }

    

end

function theendUpdate(dt)

    meteorMAX.pox = meteorMax.posx - (10*dt)

   for i, cacto in ipairs( cactos ) do
    table.remove(cacto, i)
   end

   for i, meteor in ipairs( meteors ) do
    table.remove(meteor, i)
   end

end

function theendDraw()
    love.graphics.setBackgroundColor(1,1,1)

    love.graphics.draw(imgMeteorosao, cacto.posx, cacto.posy,0,1,1,imgCacto:getWidth()/2, imgCacto:getWidth()/2)

    love.graphics.setColor(math.random(), math.random(), math.random(), 1)
    love.graphics.rectangle("line", 0, 650, larguraTela, 500)
end--]] 