
function pointsLoad()
    
end

function pointsUpdate(dt)
    pontos = pontos + (0.10)
end

function pointsDraw()
    love.graphics.setFont(love.graphics.newFont(font, 15))
    love.graphics.setColor(corElement)
    love.graphics.print("PONTOS: "..math.floor(pontos), 100, 10)
end