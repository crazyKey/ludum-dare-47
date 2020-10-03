require("assets.rocket")
require("assets.track")

game = {
    debug = false,
    lost = false,
}

delta = 0.1

function game:init()
    game.world = bump.newWorld()

    rocket = createRocket()
    track = createTrack()
end

function game:update(dt)
    delta = dt

    if not game.lost then
        rocket = moveRocket(rocket)
    end
end

function game:draw()
    if game.lost then
        --
    else
        drawRocket()
        drawTrack()
    end

    -- show collision boxes
    if game.debug then
        local items, len = game.world:getItems()
        for i = 1, len do
            local x, y, w, h = game.world:getRect(items[i])
            love.graphics.rectangle("line", x, y, w, h)
        end
    end
end
