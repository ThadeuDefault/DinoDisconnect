
function pointsLoad()
    
end

function pointsUpdate(dt)

end

function pointsDraw()
    love.graphics.setFont(love.graphics.newFont(font, 15))
    love.graphics.setColor(0,0,0) 
    love.graphics.print("PONTOS: "..pontos, 100, 10)
end