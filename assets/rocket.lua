function createRocket()
    rocket = {
        x = 625,
        y = 600,
        width = 38,
        height = 55,
        speed = 50,
        angle = 4.1,
    }

    rocket.image = love.graphics.newImage("assets/rocket.png")
    rocket.origin_x = rocket.image:getWidth() / 2
    rocket.origin_y = rocket.image:getHeight() / 2

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

    -- check collision
    if len > 0 then
        print(cols)
        print("LOST")
    end

    return rocket
end

function drawRocket()
    love.graphics.draw(rocket.image, rocket.x, rocket.y, rocket.angle+1.5708, 1, 1, rocket.origin_x, rocket.origin_y)
end