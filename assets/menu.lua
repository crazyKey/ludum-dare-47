function createMenu()
    menu = {}

    str = [[
        <font>
        YOU SUCCESSFULLY RESCUED THE CREW OF THE SPACE SHUTTLE EXPLR-57
        TO SAVE THEM YOU GOT STUCK IN THE NGC-8008 GALAXY.

        YOU MUST BRING HOME THE <red>SANA</red> CREW.

        TO ESCAPE THE GALAXY YOU NEED TO REACH THE LIGHT SPEED, TURN ON THE
        MAIN ENGINE AND KEEP THE SHUTTLE SAFE WHILE ACCELERATING.

        PRESS space TO START.
    ]]

    tags = {
        font  = love.graphics.newFont('fonts/SpaceAdventure.ttf', 36),
        red     = {255,0,0,255},
        ['/red']= {255,255,255},
        regular = love.graphics.newFont(46),
    }

    menu.text = tastytext.new(str, 1000, tags.regular, tags)
    menu.text.align = "center"

    return menu
end

function closeMenu()
    if love.keyboard.isDown("space") then
        game.menu = false
        game.play = true
    end
end

function drawMenu(menu)
    menu.text:draw()
end