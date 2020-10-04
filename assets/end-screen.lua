function createEndScreen()
    end_screen = {}

    end_screen.won_text = [[
        <font>
        YOU MADE IT!

        YOU RESCUED THE EXPLR-57 SPACE SHUTTLE CREW AND ESCAPED THE NGC-8008 GALAXY.

        <red>SANA</red> AND THE GOVERNMENT WILL BE ALWAYS THANKFUL.

        YOU ARE A HERO NOW.

        WELL DONE.
    ]]

    end_screen.lost_text = [[
        <font>
        YOU DID NOT MAKE IT.

        YOU ARE GONE AND SO ARE THE PEOPLE OF THE EXPLR-57 SPACE SHUTTLE CREW.

        YOU FAILED THE <red>SANA</red>, THE GOVERNMENT, AND THE EARTH.

        YOU FAILED.
    ]]

    return end_screen
end

function drawEndScreen(end_screen)
    local str = end_screen.lost_text

    if game.win then
        str = end_screen.won_text
    end

    end_screen.text = tastytext.new(str, 1000, game.text_tags.regular, game.text_tags)
    end_screen.text.align = "center"

    end_screen.text:draw()
end