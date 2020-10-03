require("assets.rocket")

game = {}

delta = 0.1

function game:init()
    rocket = createRocket()
end

function game:update(dt)
    delta = dt

    rocket = moveRocket(rocket)
end

function game:draw()
    drawRocket()
end
