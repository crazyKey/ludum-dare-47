function createRocket()
    rocket = {
        x = 100,
        y = 100,
        colour = "white",
        speed = 50,
        angle = 0,
    }

    rocket.image = love.graphics.newImage("assets/rocket.png")
    rocket.origin_x = rocket.image:getWidth() / 2
    rocket.origin_y = rocket.image:getHeight() / 2

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

    cos = math.cos(rocket.angle)
    sin = math.sin(rocket.angle)

    -- move forward
    rocket.x = rocket.x + rocket.speed * cos * delta
    rocket.y = rocket.y + rocket.speed * sin * delta

    return rocket
end

function drawRocket()
    love.graphics.draw(rocket.image, rocket.x, rocket.y, rocket.angle+1.5708, 0.25, 0.25, rocket.origin_x, rocket.origin_y)
end