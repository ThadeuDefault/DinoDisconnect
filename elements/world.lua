
function worldLoad()
    love.graphics.setBackgroundColor(0,0,0)
    gravidade = 100
end

function worldUpdate(dt)

end

function worldDraw()
    love.graphics.setColor(math.random(), math.random(), math.random(), 1)
    love.graphics.rectangle("line", 0, 650, larguraTela, 500)
end