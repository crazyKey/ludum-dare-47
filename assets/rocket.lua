function createRocket()
    rocket = {
        x = 625,
        y = 600,
        width = 30,
        height = 34,
        speed = 50,
        angle = 4.1,
    }

    -- rocket image
    rocket.image = love.graphics.newImage("assets/rocket-small.png")
    rocket.origin_x = rocket.image:getWidth() / 2
    rocket.origin_y = rocket.image:getHeight() / 2

    -- rocket speed text
    rocket.text_tags = {
        font  = love.graphics.newFont('fonts/SpaceAdventure.ttf', 36),
        red     = {255,0,0,255},
        ['/red']= {255,255,255},
        regular = love.graphics.newFont(46),
    }

    -- add rocket to world for collision
    game.world:add(rocket, rocket.x - rocket.origin_x, rocket.y - rocket.origin_y, rocket.width, rocket.height)

    return rocket
end

function moveRocket(rocket)
    -- turn right
    if love.keyboard.isDown("right") then
        rocket.angle = rocket.angle + 2.5 * delta
    end

    -- turn left
    if love.keyboard.isDown("left") then
        rocket.angle = rocket.angle - 2.5 * delta
    end

    -- calculate position
    cos = math.cos(rocket.angle)
    sin = math.sin(rocket.angle)

    local goalX = rocket.x + rocket.speed * cos * delta
    local goalY = rocket.y + rocket.speed * sin * delta

    -- move rocket
    local actualX, actualY, cols, len = game.world:move(rocket, goalX - rocket.origin_x, goalY - rocket.origin_y)
    rocket.x = actualX + rocket.origin_x
    rocket.y = actualY + rocket.origin_y

    -- increase speed
    rocket.speed = rocket.speed + 10 * delta

    -- check speed
    if rocket.speed >= 465 then
        game.play = false
        game.win = true

        soundtrack:stop()
    end

    -- check collision
    if len > 0 then
        game.play = false

        sfxCrash:play()
        soundtrack:stop()
    end

    return rocket
end

function drawRocket(rocket)
    love.graphics.draw(rocket.image, rocket.x, rocket.y, rocket.angle+1.5708, 1.4, 1.4, rocket.origin_x, rocket.origin_y)
end

function drawSpeed(rocket)
    local fake_speed = rocket.speed * 400

    rocket.text = tastytext.new(string.format("<font>%d miles/s", fake_speed), 1000, tags.regular, tags)
    rocket.text.align = "center"

    rocket.text:draw()
end