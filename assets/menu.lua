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

    menu.text = tastytext.new(str, 1000, game.text_tags.regular, game.text_tags)
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