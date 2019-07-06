
function meteorLoad()
    meteor= {
        posx = math.random(300, 800),
        posy = 0,
        speedx = 200,
        speedy = 300
    }
    meteors = {}
    imgMeteor = love.graphics.newImage("images/meteor.png")
end

function meteorUpdate(dt)

    droparMeteor = math.random(1, 10)

    meteor.posy = meteor.posy + meteor.speedy*dt
    meteor.posx = meteor.posx - meteor.speedx*dt

    if meteor.posy > 610 then
        meteor.posy = 0
        meteor.posx = math.random(300, 800)
    end

end

function meteorDraw()
    love.graphics.draw(imgMeteor, meteor.posx, meteor.posy,0,1,1,imgMeteor:getWidth()/2, imgMeteor:getWidth()/2)
end