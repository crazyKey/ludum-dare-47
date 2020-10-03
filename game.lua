require("assets.rocket")
require("assets.track")

game = {
    debug = false,
}

delta = 0.1

function game:init()
    game.world = bump.newWorld()

    rocket = createRocket()
    track = createTrack()
end

function game:update(dt)
    delta = dt

    rocket = moveRocket(rocket)
end

function game:draw()
    drawRocket()
    drawTrack()

    -- show collision boxes
    if game.debug then
        local items, len = game.world:getItems()
        for i = 1, len do
            local x, y, w, h = game.world:getRect(items[i])
            love.graphics.rectangle("line", x, y, w, h)
        end
    end
end
