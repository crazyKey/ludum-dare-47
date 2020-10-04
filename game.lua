require("assets.rocket")
require("assets.track")
require("assets.stars")
require("assets.menu")
require("assets.end-screen")

game = {
    debug = false,
    menu = true,
    play = false,
    win = false,
}

delta = 0.1

function game:init()
    game.text_tags = {
        font  = love.graphics.newFont('fonts/SpaceAdventure.ttf', 36),
        red     = {255,0,0,255},
        ['/red']= {255,255,255},
        regular = love.graphics.newFont(46),
    }

    initGame()
end

function initGame()
    game.world = bump.newWorld()

    game.rocket = createRocket()
    game.track = createTrack()
    game.stars = createStars()
    game.menu_screen = createMenu()
    game.end_screen = createEndScreen()
end

function resetGame()
    game.menu = true
    game.play = false

    soundtrack:play()

    initGame()
end

function game:update(dt)
    delta = dt

    stars = animateStars(game.stars)

    if game.play then
        rocket = moveRocket(game.rocket)
    elseif game.menu then
        closeMenu()
    else
        if not game.win and love.keyboard.isDown("space") then
            resetGame()
        end
    end
end

function game:draw()
    drawStars(game.stars)

    if game.play then
        drawRocket(game.rocket)
        drawSpeed(game.rocket)
        drawTrack(game.track)
    elseif game.menu then
        drawMenu(game.menu_screen)
    else
        drawEndScreen(game.end_screen)
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
