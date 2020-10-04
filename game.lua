require("assets.rocket")
require("assets.track")
require("assets.stars")
require("assets.menu")

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
    game.menu = createMenu()
end

function game:update(dt)
    delta = dt

    stars = animateStars(game.stars)

    if game.play then
        rocket = moveRocket(game.rocket)
    elseif game.menu then
        closeMenu()
    end
end

function game:draw()
    drawStars(game.stars)

    if game.play then
        drawRocket(game.rocket)
        drawTrack(game.track)
    elseif game.menu then
        drawMenu(game.menu)
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
