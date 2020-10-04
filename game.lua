require("assets.rocket")
require("assets.track")
require("assets.stars")

game = {
    debug = false,
    menu = true,
    play = false,
}

delta = 0.1

function game:init()
    game.world = bump.newWorld()

    game.rocket = createRocket()
    game.track = createTrack()
    game.stars = createStars()
end

function game:update(dt)
    delta = dt

    if game.play then
        rocket = moveRocket(game.rocket)
    elseif game.menu then
        stars = animateStars(game.stars)
    end
end

function game:draw()
    if game.play then
        drawRocket(game.rocket)
        drawTrack(game.track)
    elseif game.menu then
        drawStars(game.stars)
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
