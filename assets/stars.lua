function createStars()
    stars = {
        image = love.graphics.newImage("assets/stars.png"),
        positions = {},
        scale = 0.5,
    }

    table.insert(stars.positions, {x = 500, y = 400, scale = stars.scale, increase = 0.5})
    table.insert(stars.positions, {x = 250, y = 600, scale = stars.scale, increase = 1})
    table.insert(stars.positions, {x = 250, y = 200, scale = stars.scale, increase = 0.75})
    table.insert(stars.positions, {x = 750, y = 600, scale = stars.scale, increase = 1.5})
    table.insert(stars.positions, {x = 750, y = 200, scale = stars.scale, increase = 1})

    stars.origin_x = stars.image:getWidth() / 2
    stars.origin_y = stars.image:getHeight() / 2

    return stars
end

function animateStars(stars)
    for i=1, #stars.positions do
        stars.positions[i].scale = stars.positions[i].scale + stars.positions[i].increase * delta

        if stars.positions[i].scale > 7 then
            stars.positions[i].scale = stars.scale
        end
    end
end

function drawStars(stars)
    for i=1, #stars.positions do
        love.graphics.draw(stars.image, stars.positions[i].x, stars.positions[i].y, 0, stars.positions[i].scale, stars.positions[i].scale, stars.origin_x, stars.origin_y)
    end
end